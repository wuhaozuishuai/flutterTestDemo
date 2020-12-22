import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(
              'http://bpic.588ku.com/element_origin_min_pic/19/12/04/2294de075e1ea4fcbb33f1f8ef2b63f5.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5),
          child: Text('take your time'),
        )
      ],
    );
    return MaterialApp(
        title: '垂直方向布局',
        home: Scaffold(
            appBar: AppBar(
              title: Text('垂直方向布局'),
            ),
            body: Center(
              child: stack,
            )));
  }
}
