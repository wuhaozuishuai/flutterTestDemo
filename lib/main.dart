import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
void main() {
  runApp(MaterialApp(
    title: '页面跳转返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主页面'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  const RouteButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToChildPage(context);
      },
      child: Text('to子页面'),
    );
  }

  _navigateToChildPage(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => PageSon()));
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$result'),
    ));
  }
}

class PageSon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('this is pageSon'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('子项111'),
              onPressed: () {
                Navigator.pop(context, '子项一返回数据');
              },
            ),
            RaisedButton(
              child: Text('子项222'),
              onPressed: () {
                Navigator.pop(context, '子项二返回数据');
              },
            )
          ],
        ),
      ),
    );
  }
}
