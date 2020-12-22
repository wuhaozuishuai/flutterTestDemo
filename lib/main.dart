import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              'take your time',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('fellow me'),
            leading: Icon(
              Icons.access_alarm_outlined,
              color: Colors.lightBlue,
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'take your time',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('fellow me'),
            leading: Icon(
              Icons.access_alarm_outlined,
              color: Colors.lightBlue,
            ),
          ),
          ListTile(
            title: Text(
              'take your time',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            subtitle: Text('fellow me'),
            leading: Icon(
              Icons.access_alarm_outlined,
              color: Colors.lightBlue,
            ),
          )
        ],
      ),
    );
    return MaterialApp(
        title: '垂直方向布局',
        home: Scaffold(
            appBar: AppBar(
              title: Text('垂直方向布局'),
            ),
            body: Center(
              child: card,
            )));
  }
}
