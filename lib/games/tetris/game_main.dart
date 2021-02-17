import 'dart:math';
import 'package:flame/game.dart';
import 'package:flame/gestures.dart';
import 'package:flame/palette.dart';
import 'package:flame/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:tetris/games/tetris/tetris.dart';
import 'package:tetris/pb/message/tetris.pb.dart';
import 'package:tetris/tools/flame_texturepacker.dart';
class MyGameSubClass extends BaseGame with TapDetector,PanDetector{
  TextConfig _textconfig = TextConfig(fontSize: 18.0, fontFamily: 'Awesome Font');
  TetrisWidgetState tetrisHome;
  Map<String, Sprite> sprites;
  //方块画布的宽高和位置
  Rect chessboard_rect = const Rect.fromLTWH(5, 5, 5, 5);
  Offset relativePoint;
  double mWidth=15; //方块宽度
  MyGameSubClass(TetrisWidgetState tetrisHome){
    this.tetrisHome=tetrisHome;
    TexturepackerLoader.fromJSONAtlas('ui.png', 'ui.json')
        .then((sprites) {
      this.sprites = sprites;
    });
  }
  @override
  void onTap() {
    tetrisHome.doOp("RR");
  }
  @override
  void onPanStart(DragStartDetails details) {
    relativePoint=details.localPosition;
  }
  @override
  void onPanUpdate(DragUpdateDetails details) {
    var point=details.localPosition;
    var d=this.distanceToPointer(this.relativePoint,details.localPosition);
    if(d>mWidth&&(this.relativePoint.dy - point.dy).abs()<50){
      if((this.relativePoint.dx - point.dx)<-mWidth){
        tetrisHome.doOp("MR");
        relativePoint=details.localPosition;
      }else if((this.relativePoint.dx - point.dx)>mWidth) {
        tetrisHome.doOp("ML");
        relativePoint = details.localPosition;
      }
    }else{
      if(((this.relativePoint.dy - point.dy)>30)){
        tetrisHome.doOp("MT");
        relativePoint = details.localPosition;
      }else if(((this.relativePoint.dy - point.dy)<-30)){
        tetrisHome.doOp("MB");
        relativePoint = details.localPosition;
      }
    }
  }
  double distanceToPointer(Offset source, Offset pointer) {


    var dx = source.dx - pointer.dx;
    var dy = source.dy - pointer.dy;

    return sqrt(dx * dx + dy * dy);
  }
  @override
  void render(Canvas canvas) {
    //设置画笔，画棋盘背景
    var mPaint = Paint()
      ..isAntiAlias = true //抗锯齿
      ..style = PaintingStyle.fill //填充
      ..color = Color(0x77cdb175); //背景为纸黄色
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(size.x / 2, size.y / 2),
            width: size.x,
            height: size.y),
        mPaint);
    if(tetrisHome.gameStatus!=null){
      if(tetrisHome.gameStatus.playerInfo!=null&&sprites!=null){
        tetrisHome.gameStatus.playerInfo.forEach((playerInfo) {
          if(playerInfo.seatIndex==1){
            var sp="game_blk3.png";
            var spr=sprites[sp];
            if(spr!=null){
              _textconfig.render(canvas, playerInfo.nickName+"("+playerInfo.score.toString()+")",
                  Vector2(105, 50), anchor: Anchor.topCenter);
              Paint paint = BasicPalette.white.paint;
              paint.color = new Color.fromARGB(255, 255, 255, 255);
              sprites[sp].render(canvas, position: Vector2(40,
                  50),
                  size: Vector2.all(24),overridePaint: paint);
            }
          }else if(playerInfo.seatIndex==2){
            var sp="game_blk4.png";
            var spr=sprites[sp];
            if(spr!=null){
              Paint paint = BasicPalette.white.paint;
              paint.color = new Color.fromARGB(255, 255, 255, 255);
              sprites[sp].render(canvas, position: Vector2(size.x-60,
                  50),
                  size: Vector2.all(24),overridePaint: paint);
              _textconfig.render(canvas, playerInfo.nickName+"("+playerInfo.score.toString()+")",
                  Vector2(size.x-105, 50), anchor: Anchor.topCenter);
            }
          }
        });
      }
      if(tetrisHome.gameStatus.roomInfo.status==TetrisGameStatus.AWAIT){
        _textconfig.render(canvas, "房间["+tetrisHome.roomId+"]等待玩家加入"+tetrisHome.gameStatus.playerInfo.length.toString()+
            "/"+tetrisHome.gameStatus.roomInfo.playerNum.toString(), Vector2(size.x/2, size.y/2), anchor: Anchor.topCenter);
      }
    }
    if(tetrisHome.gameData==null||sprites==null){
      return;
    }
    S2C_GridBroadcast s2c=tetrisHome.gameData;
    double chessboard_width=size.x-80;

    //canvas.drawColor(CupertinoColors.systemGrey, BlendMode.colorBurn);//重绘下整个界面的画布背景颜色
    double mWidth = chessboard_rect.width / s2c.width.toInt();
    double mHeight = mWidth;
    this.mWidth=mWidth;
    chessboard_rect = Rect.fromLTWH(40, 80, chessboard_width, mWidth*s2c.height.toInt());
    //画棋盘网格
    mPaint
      ..style = PaintingStyle.stroke
      ..color = CupertinoColors.systemGrey6
      ..strokeWidth = 1.0;
    //canvas.drawRect(chessboard_rect, mPaint);
    for (var i = 0; i <= s2c.height.toInt(); i++) {
      //画横线
      canvas.drawLine(
          Offset(chessboard_rect.left, chessboard_rect.top+mHeight * i), Offset(chessboard_rect.left+chessboard_rect.width, chessboard_rect.top+mHeight * i), mPaint);
    }
    for (var i = 0; i <= s2c.width.toInt(); i++) {
      //画竖线
      canvas.drawLine(
          Offset(chessboard_rect.left+mWidth * i, chessboard_rect.top), Offset(chessboard_rect.left+mWidth * i, chessboard_rect.top+chessboard_rect.height), mPaint);
    }
    s2c.map.forEach((Block b){
      var row=b.index.toInt()%s2c.width.toInt();
      var column=b.index.toInt()/s2c.width.toInt();
      if(b.value>0){
        var bv=b.value.toInt();
        var sp="game_blk$bv.png";
        var spr=sprites[sp];
        if(spr!=null){
          Paint paint = BasicPalette.white.paint;
          paint.color = new Color.fromARGB(b.opacity.toInt(), 255, 255, 255);
          sprites[sp].render(canvas, position: Vector2(chessboard_rect.left+row*mWidth, chessboard_rect.top+column.toInt()*mHeight), size: Vector2.all(mWidth-1),overridePaint: paint);
        }else{
          print(sp);
        }
      }else{
        mPaint
          ..style = PaintingStyle.fill //填充
          ..color = Color(0xFFFF)
          ..strokeWidth = 2.0;
        Rect rect=Rect.fromLTWH(chessboard_rect.left+row*mWidth, chessboard_rect.top+column.toInt()*mHeight, mWidth, mHeight);
        canvas.drawRect(rect, mPaint);
      }
    });
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

  Color backgroundColor() => const Color(0xFFFFFFFF);
}
