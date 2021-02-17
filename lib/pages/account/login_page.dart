//登录界面
import 'dart:typed_data';
import 'package:flui/flui.dart';
import 'package:flutter/services.dart';
import '../../tools/rsync.dart' as rsync;
import '../../models/user_model.dart';
import 'package:quiver/strings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
final TextEditingController _controller = new TextEditingController(text:"");
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Double Tetris'),
        ),
        body: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50,),
              Wrap(
                  spacing: 18.0, // 主轴(水平)方向间距
                  runSpacing: 4.0, // 纵轴（垂直）方向间距
                  alignment: WrapAlignment.center, //沿主轴方向居中
                  children: <Widget>[
                    Text('Double Tetris',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
              SizedBox(height: 50),
              new inputEdtextNameWiget(),
//          SizedBox(height: 20,),
//          new inputEdtextPassWordWiget(),
              SizedBox(height: 30,),
              new loginButtonWiget(),
            ],
          ),

        ));
  }

}
//输入用户名
class inputEdtextNameWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black12,
        ),
        alignment: Alignment.center,
        child: TextField(
          keyboardType: TextInputType.number,//键盘类型，数字键盘
          maxLines: 1,
          maxLength: 4,
          maxLengthEnforced: true,
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'User ID',
            border: InputBorder.none,
          ),
          inputFormatters:[
            FilteringTextInputFormatter.digitsOnly,//只输入数字
            LengthLimitingTextInputFormatter(4)//限制长度
          ],
        ),
      ),
    );
  }
}
//输入密码
class inputEdtextPassWordWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      child: new Container(
        padding: EdgeInsets.fromLTRB(20, 2, 8, 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black12,
        ),
        alignment: Alignment.center,
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            hintText: 'passwd',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
//登录按钮
class loginButtonWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SizedBox(
      width: double.infinity,
      child: new OutlineButton(
        borderSide:new BorderSide(color: Theme.of(context).primaryColor),
        child: new Text('Login',style: new TextStyle(color: Theme.of(context).primaryColor),),
        onPressed: (){
          if(_controller.text.isEmpty){
            FLToast.text(text: 'User ID cannot be empty!!!');
          }else{
            Provider.of<UserModel>(context,listen: false).doLogin(context,_controller.text);
          }
        },
      ),
    );
  }
}