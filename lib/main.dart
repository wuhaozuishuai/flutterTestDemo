import 'package:flutter/material.dart';
// import 'package:flutter_app_test/main1.dart';

void main() {
  runApp(MaterialApp(
    title: "导航演示",
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('查看详情页面'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => secondScreen(), //跳转的路由
                ));
          },
        ),
      ),
    );
  }
}

class secondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('详情页面'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstScreen(), //跳转的路由
                  ));
            },
          ),
        ));
  }
}
