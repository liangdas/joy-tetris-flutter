/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'dart:async';
import 'dart:convert';
import 'package:flui/flui.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:tetris/models/user_model.dart';
import 'package:tetris/tools/mqtt_model.dart';

import '../../tools/EventBus.dart';
import 'package:fluro/fluro.dart' as fluro;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tetris/tools/HttpUtils.dart';
import 'package:tetris/tools/application.dart';
import 'package:tetris/tools/config.dart';
import 'package:tetris/tools/mqtt.dart';
import 'package:tetris/tools/routes.dart';

class AppComponent extends StatefulWidget {
  @override
  State createState() {
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {
  Timer _timer;
  AppComponentState() {
    HttpUtils.API_PREFIX=BaseServerUrl();
    final router = fluro.FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  @override
  void initState() {
    //连接服务器
    mqttfactory.connect(MqttBroker(), MqttPort());
    bus.on<MqttStateEvent>().listen((MqttStateEvent event) {
      if(event.state==MqttConnectionState.connected){
          //服务器重连了
        Provider.of<UserModel>(context,listen: false).reLogin();
      }else if(event.state==MqttConnectionState.disconnected){
        //服务器断连了
        FLToast.text(text: 'The service is disconnected!!!');
      }
    });
    startTimer();
  }
  void startTimer() {
    //设置 1 秒回调一次
    const period = const Duration(seconds: 5);
    _timer = Timer.periodic(period, (timer) {
      mqttfactory.request(
          "/pong",
          json.encode({}),
              (event){
          }
      );
    });
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }
  @override
  void dispose() {
    super.dispose();
    cancelTimer();
  }
  @override
  Widget build(BuildContext context) {
    final app =  MaterialApp(
      title: 'Fluro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
    return app;
  }
}
