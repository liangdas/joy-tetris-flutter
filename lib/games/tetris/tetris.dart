import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:flame/game.dart';
import 'package:tetris/pb/message/game.pb.dart';
import 'package:tetris/pb/message/response.pb.dart';
import 'package:tetris/pb/message/tetris.pb.dart';
import 'package:tetris/tools/mqtt.dart';
import 'package:tetris/tools/mqtt_model.dart';
import 'package:typed_data/typed_data.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'game_main.dart';
import 'package:archive/archive.dart';
import '../../tools/rsync.dart' as rsync;

class TetrisHome extends StatefulWidget {
  TetrisHome(this.roomId,this.playerNum,this._gameType);
  String roomId;
  int playerNum;
  TetrisGameType _gameType;
  @override
  TetrisWidgetState createState() => new TetrisWidgetState();
}

class TetrisWidgetState extends State<TetrisHome> {
  String roomId;
  int playerNum;
  ByteData originalData;
  S2C_GridBroadcast gameData;
  TetrisGameType _gameType;
  S2C_GameStatusChangeBroadcast gameStatus;

  @override
  void initState() {
    super.initState();
    //初始化状态
    roomId=widget.roomId;
    playerNum=widget.playerNum;
    _gameType=widget._gameType;

    mqttfactory.mqttbus.on("/room/exit/", (MqttMessageEvent arg){
      Navigator.pop(context);
    });
    mqttfactory.mqttbus.on("/s2c_tetris/", (MqttMessageEvent arg){
      S2C_Tetris s2c_tetris=S2C_Tetris.fromBuffer(arg.message.payload.payload.message);
      if(s2c_tetris.msgType==5){
        if(s2c_tetris.gameStatusChangeS2cBroadcast.roomInfo.status==TetrisGameStatus.GAMEOVER){
          Navigator.pop(context);
        }
        gameStatus=s2c_tetris.gameStatusChangeS2cBroadcast;
      }
    });
    mqttfactory.mqttbus.on("/tetris/grid/data/", (MqttMessageEvent arg){
      //print(arg.message.topic);
      final gZipped_data = GZipDecoder().decodeBytes(arg.message.payload.payload.message);
      Uint8List byteArray =Uint8List.fromList(gZipped_data);
      originalData=ByteData.view(byteArray.buffer);

      gameData=S2C_GridBroadcast.fromBuffer(originalData.buffer.asInt8List());
      //print(s2c.map);
    });
    mqttfactory.mqttbus.on("/tetris/grid/patch/", (MqttMessageEvent arg){
      //print(arg.message.topic);
      try{
        var data=rsync.RsyncPatch(ByteData.view(arg.message.payload.payload.message.buffer), originalData);
        originalData=data;
        gameData=S2C_GridBroadcast.fromBuffer(originalData.buffer.asInt8List());
      }catch(e){
        //差分数据合并失败，请求重新拉取全量数据
        this.syncInfo();
      }
    });
    createRoom();
  }

  S2C_GridBroadcast getTableData() {
    return gameData;
  }
  S2C_GameStatusChangeBroadcast getGameStatus() {
    return gameStatus;
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return MaterialApp(
      title: 'tetris',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Center(
              child:  ConstrainedBox(
                constraints: BoxConstraints.tightFor(),
                child: new Stack(
                  overflow:Overflow.clip,
                  children: <Widget>[
                    SizedBox(
                      width: width,
                      height: height,
                      child: GameWidget(
                        game: MyGameSubClass(this),
                      ),
                    ),
                    new Align(
                      alignment: new FractionalOffset(1, 0),
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new IconButton(
                              icon: new Icon(Icons.assignment_return),
                              tooltip: '返回主页',
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }

  //-------------操作指令--------------
  createRoom(){
    S2S_Tetris_Create s2s_create_debug=new S2S_Tetris_Create();
    s2s_create_debug.owner=$fixnum.Int64(0);
    s2s_create_debug.roomId=roomId;
    s2s_create_debug.gameType=_gameType;
    s2s_create_debug.playerNum=$fixnum.Int64(playerNum);
    Uint8Buffer uint8buffer=Uint8Buffer();
    uint8buffer.addAll(s2s_create_debug.writeToBuffer());
    mqttfactory.requestbuffer("tetris://modulus/tetris/s2s_tetris_create/",uint8buffer,(MqttMessageEvent arg){
      S2C_Response s2c_response=S2C_Response.fromBuffer(arg.message.payload.payload.message);
      print(s2c_response);
      if(s2c_response.hasError()){
        print("createRoom error ${s2c_response.hasError()}");
      }else{
        S2R_Tetris_Create s2c_create=S2R_Tetris_Create.fromBuffer(s2c_response.result);
        print("createRoom ${s2c_create.roomId}");
        roomId=s2c_create.roomId;
      }
      //加入游戏
      this.doJoin();
    });
  }
  doJoin(){
    C2S_Tetris c2s=new C2S_Tetris();
    c2s.roomId=roomId;
    c2s.msgType="3";
    Uint8Buffer uint8buffer=Uint8Buffer();
    uint8buffer.addAll(c2s.writeToBuffer());
    mqttfactory.requestbuffer("tetris://modulus/tetris/c2s_tetris/",uint8buffer,(MqttMessageEvent arg){
      S2C_Response s2c_response=S2C_Response.fromBuffer(arg.message.payload.payload.message);
      print(s2c_response);
      if(s2c_response.hasError()){
        print("doJoin error ${s2c_response.hasError()}");
      }else{
        print("doJoin ${s2c_response.result}");
      }
    });
  }
  doExit(){
    C2S_Tetris c2s=new C2S_Tetris();
    c2s.roomId=roomId;
    c2s.msgType="4";
    Uint8Buffer uint8buffer=Uint8Buffer();
    uint8buffer.addAll(c2s.writeToBuffer());
    mqttfactory.requestbuffer("tetris://modulus/tetris/c2s_tetris/",uint8buffer,(MqttMessageEvent arg){
      S2C_Response s2c_response=S2C_Response.fromBuffer(arg.message.payload.payload.message);
      print(s2c_response);
      if(s2c_response.hasError()){
        print("doJoin error ${s2c_response.hasError()}");
      }else{
        print("doJoin ${s2c_response.result}");
      }
    });
  }
  doOp(String opcode){
    C2S_Tetris c2s=new C2S_Tetris();
    c2s.roomId=roomId;
    c2s.msgType="8";
    c2s.playerOperationSkeletonC2s=new C2S_OperationSkeleton();
    c2s.playerOperationSkeletonC2s.opcode=opcode;
    Uint8Buffer uint8buffer=Uint8Buffer();
    uint8buffer.addAll(c2s.writeToBuffer());
    mqttfactory.requestbuffer("tetris://modulus/tetris/c2s_tetris/",uint8buffer,(MqttMessageEvent arg){
      S2C_Response s2c_response=S2C_Response.fromBuffer(arg.message.payload.payload.message);
      print(s2c_response);
      if(s2c_response.hasError()){
        print("doJoin error ${s2c_response.hasError()}");
      }else{
        print("doJoin ${s2c_response.result}");
      }
    });
  }
  syncInfo(){
    C2S_Tetris c2s=new C2S_Tetris();
    c2s.roomId=roomId;
    c2s.msgType="5";
    c2s.syncInfoC2s=new C2S_SyncInfo();
    c2s.syncInfoC2s.hold=1;
    Uint8Buffer uint8buffer=Uint8Buffer();
    uint8buffer.addAll(c2s.writeToBuffer());
    mqttfactory.requestbuffer("tetris://modulus/tetris/c2s_tetris/",uint8buffer,(MqttMessageEvent arg){
      S2C_Response s2c_response=S2C_Response.fromBuffer(arg.message.payload.payload.message);
      print(s2c_response);
      if(s2c_response.hasError()){
        print("syncInfo error ${s2c_response.hasError()}");
      }else{
        print("syncInfo ${s2c_response.result}");
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    doExit();
  }

}
