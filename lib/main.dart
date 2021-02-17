import 'package:flui/flui.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user_model.dart';
import 'pages/app/app_component.dart';
FLToastDefaults _toastDefaults = FLToastDefaults();
void main() => runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserModel()),
      ],
      //child: AppComponent(),
      //child: MyApp(),
      child: MaterialApp(
          theme:  ThemeData(
            primarySwatch: Colors.green,
          ),
          //home: AppComponent(),
        builder: (BuildContext context, Widget child) {
          return FLToastProvider(
              defaults: _toastDefaults,
              child: AppComponent()
          );
        },
      ),
    ));
