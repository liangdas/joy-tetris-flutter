import 'dart:convert';
import 'package:fixnum/fixnum.dart';
import 'package:flui/flui.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:tetris/pb/message/account.pb.dart';
import 'package:tetris/pb/message/response.pb.dart';
import 'package:tetris/tools/application.dart';
import 'package:tetris/tools/mqtt.dart';
import 'package:tetris/tools/mqtt_model.dart';
import 'package:tetris/tools/routes.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:provider/provider.dart';
import 'package:quiver/strings.dart';
import 'package:typed_data/typed_data.dart';
class UserModel with ChangeNotifier {
  S2C_Login s2c_login= null;

  S2C_Login get userLoginBean => s2c_login;

  bool Logined(BuildContext context){
    if(s2c_login==null){
      return false;
    }
    return Provider.of<MqttModel>(context,listen: false).state==MqttConnectionState.connected;
  }
  void setLogin(S2C_Login bean) {
    s2c_login=bean;
    notifyListeners();
  }
  void reLogin(){
    if(s2c_login==null){
      print("还未登陆过无法重连...");
      return;
    }
    C2S_Login_DEBUG c2s_login_debug=new C2S_Login_DEBUG();
    c2s_login_debug.userId=s2c_login.userId;
    Uint8Buffer uint8buffer=Uint8Buffer();
    uint8buffer.addAll(c2s_login_debug.writeToBuffer());
    mqttfactory.requestbuffer("account://modulus/account/c2s_login_debug/",uint8buffer,(MqttMessageEvent arg){
      S2C_Response s2c_response=S2C_Response.fromBuffer(arg.message.payload.payload.message);
      print(s2c_response);
      if(s2c_response.hasError()){
        print("LoginWithUserId error ${s2c_response.hasError()}");
      }else{
        S2C_Login s2c_login=S2C_Login.fromBuffer(s2c_response.result);
        print("LoginWithUserId ${s2c_login}");
        this.setLogin(s2c_login);
        FLToast.text(text: 'Successful service reconnection!!!');
      }
    });
  }
  void doLogin(BuildContext context,String userId){
    C2S_Login_DEBUG c2s_login_debug=new C2S_Login_DEBUG();
    c2s_login_debug.userId=$fixnum.Int64(int.parse(userId));
    Uint8Buffer uint8buffer=Uint8Buffer();
    uint8buffer.addAll(c2s_login_debug.writeToBuffer());
    mqttfactory.requestbuffer("account://modulus/account/c2s_login_debug/",uint8buffer,(MqttMessageEvent arg){
      S2C_Response s2c_response=S2C_Response.fromBuffer(arg.message.payload.payload.message);
      print(s2c_response);
      if(s2c_response.hasError()){
        print("LoginWithUserId error ${s2c_response.hasError()}");
      }else{
        S2C_Login s2c_login=S2C_Login.fromBuffer(s2c_response.result);
        print("LoginWithUserId ${s2c_login}");
        this.setLogin(s2c_login);
        Application.router.navigateTo(context, Routes.home);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}