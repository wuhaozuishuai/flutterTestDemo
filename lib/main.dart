import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '垂直方向布局',
        home: Scaffold(
            appBar: AppBar(
              title: Text('垂直方向布局'),
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, //对齐方式
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Text('test 1'),
                  ),
                  Expanded(
                    child: Text('take your time '),
                  ),
                  Expanded(
                    child: Text('don 123312312312 '),
                  ),
                  Expanded(
                    child: Text('test dasdasfasdfsdfdsfsd'),
                  ),
                ],
              ),
            )));
  }
}
