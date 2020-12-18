import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
void main() =>
    runApp(MyApp(items: List<String>.generate(1000, (index) => "item $index")));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'text widget',
      home: Scaffold(
          appBar: AppBar(title: Text('flutter 学习')),
          // body: Center(
          // child: Text(
          //   'hello widget,fhdsufhsifoisdjfoajf都弄佛的念佛分内的事，大師傅但是',
          //   textAlign: TextAlign.center,
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis, //超出省略
          //   style: TextStyle(
          //       fontSize: 25.0,
          //       color: Color.fromARGB(255, 255, 130, 123),
          //       decoration: TextDecoration.underline,
          //       decorationStyle: TextDecorationStyle.solid),
          // ),

          //Container容器组件
          // child: Container(
          //   child: Text(
          //     'hello Container',
          //     style: TextStyle(fontSize: 40, color: Colors.white),
          //   ),
          //   alignment: Alignment.centerLeft,
          //   width: 500.0,
          //   height: 400,
          //   // color: Colors.lightBlue,
          //   padding: const EdgeInsets.all(50),
          //   margin: const EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //       //渐变
          //       gradient: const LinearGradient(//线性渐变
          //           colors: [Colors.lightBlue, Colors.red]),
          //       border: Border.all(width: 5, color: Colors.yellowAccent)),
          // ),

          //图片组件
          // child: Container(
          //   child: Image.network(
          //     'https://bkimg.cdn.bcebos.com/pic/03087bf40ad162d99377e2451edfa9ec8b13cdca?x-bce-process=image/resize,m_lfit,w_268,limit_1/format,f_jpg',
          //     fit: BoxFit.fill,
          //     //混合模式
          //     // color: Colors.greenAccent,
          //     // colorBlendMode: BlendMode.darken,
          //     repeat: ImageRepeat.noRepeat,
          //   ),
          //   width: 300,
          //   height: 500,
          //   color: Colors.lightBlue,
          // ),

          // ),

          // body: ListView(
          //   children: <Widget>[
          //     ListTile(
          //       leading: new Icon(Icons.ac_unit_outlined),
          //       title: Text('测试list组件1'),
          //     ),
          //     ListTile(
          //       leading: new Icon(Icons.ac_unit_outlined),
          //       title: Text('测试list组件22'),
          //     ),
          //     ListTile(
          //       leading: new Icon(Icons.access_alarm_outlined),
          //       title: Text('测试list组件33'),
          //     ),
          //     Container(
          //       child: Image.network(
          //         'https://bkimg.cdn.bcebos.com/pic/03087bf40ad162d99377e2451edfa9ec8b13cdca?x-bce-process=image/resize,m_lfit,w_268,limit_1/format,f_jpg',
          //       ),
          //       width: 200,
          //     )
          //   ],
          // ),

          // body: Center(
          //   child: Container(
          //     height: 200,
          //     child: MyList(),
          //   ),
          // ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${items[index]}'),
              );
            },
          )),
    );
  }
}

//横向list组件
// class MyList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       scrollDirection: Axis.horizontal, //横向
//       children: <Widget>[
//         Container(
//           width: 180,
//           color: Colors.lightBlue,
//         ),
//         Container(
//           width: 180,
//           color: Colors.yellow,
//         ),
//         Container(
//           width: 180,
//           color: Colors.orange,
//         ),
//         Container(
//           width: 180,
//           color: Colors.red,
//         )
//       ],
//     );
//   }
// }
