import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flui/flui.dart';
import 'package:flutter/cupertino.dart';
import 'package:tetris/games/tetris/tetris.dart';
import 'package:tetris/pb/message/tetris.pb.dart';
final TextEditingController _controller = new TextEditingController(text:"");
const List<StaggeredTile> _tiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 0.5),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];

List<Widget> _children = <Widget>[
  const HomeHeaderTile('Double Tetris', Colors.indigo),
  HomeTile(
      'Single classic', Colors.indigo,(BuildContext context){
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return TetrisHome(Random().nextInt(1000).toString(),1,TetrisGameType.CLASSIC);
        }));
  } ),
  HomeTile('Double classic', Colors.deepOrange,
          (BuildContext context){
        showCupertinoDialog(
            context: context,
            builder: (context) {
              return CupertinoAlertDialog(
                title: Text('get into the room'),
                content: Card(
                  elevation: 0.0,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                            hintText: 'Please enter the room id',
                            filled: true,
                            fillColor: Colors.grey.shade50),
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancel'),
                  ),
                  CupertinoDialogAction(
                    onPressed: () {
                      if(_controller.text.isEmpty){
                        FLToast.text(text: 'Room id cannot be empty!!!');
                      }else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return TetrisHome(_controller.text,2,TetrisGameType.CLASSIC);
                        }));
                      }

                    },
                    child: Text('confirm'),
                  ),
                ],
              );
            });
      },iconData: Icons.group_add,),
  HomeTile(
      'Single Quick', Colors.orangeAccent,(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return TetrisHome(Random().nextInt(1000).toString(),1,TetrisGameType.QUICK);
    }));
  } ),
  HomeTile('Double Quick', Colors.orangeAccent,
        (BuildContext context){
      showCupertinoDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              title: Text('get into the room'),
              content: Card(
                elevation: 0.0,
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                          hintText: 'Please enter the room id',
                          filled: true,
                          fillColor: Colors.grey.shade50),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('cancel'),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    if(_controller.text.isEmpty){
                      FLToast.text(text: 'Room id cannot be empty!!!');
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return TetrisHome(_controller.text,2,TetrisGameType.QUICK);
                      }));
                    }

                  },
                  child: Text('confirm'),
                ),
              ],
            );
          });
    },iconData: Icons.group_add,),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: new StaggeredGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            children: _children,
            staggeredTiles: _tiles,
          ),
        ));
  }
}

class HomeHeaderTile extends StatelessWidget {
  const HomeHeaderTile(this.title, this.backgroundColor);

  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
          border: new Border(
              bottom: new BorderSide(
                color: backgroundColor,
              ))),
      child: new Align(
        alignment: Alignment.bottomCenter,
        child: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .primaryTextTheme
                .title
                .copyWith(color: backgroundColor),
          ),
        ),
      ),
    );
  }
}

typedef ContextCallback = void Function(BuildContext context);
class HomeTile extends StatelessWidget {
  HomeTile(this.title, this.backgroundColor,this.callback,{this.iconData});

  String title;
  ContextCallback callback;
  Color backgroundColor;
  IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: (){
          if(this.callback!=null){
            this.callback(context);
          }
        },
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(8.0),
            child: iconData==null?new Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).primaryTextTheme.title.copyWith(
                  color:
                  ThemeData.estimateBrightnessForColor(backgroundColor) ==
                      Brightness.dark
                      ? Colors.white
                      : Colors.black),
            ):Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Icon(iconData,
                  color:
                  ThemeData.estimateBrightnessForColor(backgroundColor) ==
                  Brightness.dark
                  ? Colors.white
                  : Colors.black),
                  new Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).primaryTextTheme.title.copyWith(
                        color:
                        ThemeData.estimateBrightnessForColor(backgroundColor) ==
                            Brightness.dark
                            ? Colors.white
                            : Colors.black),
                  ),
                ],
            )
          ),
        ),
      ),
    );
  }
}
