import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '水平方向布局',
        home: Scaffold(
          appBar: AppBar(
            title: Text('水平方向布局'),
          ),
          body: new Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text('red button '),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.yellow,
                  child: Text('yellow button '),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.blue,
                  child: Text('blue button '),
                ),
              ),
              Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text('orange button'),
                ),
              ),
            ],
          ),
        ));
  }
}
