import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "gridView网格列表",
        home: Scaffold(
          appBar: AppBar(
            title: Text('gridView网格列表'),
          ),
          body: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                childAspectRatio: 0.7),
            children: <Widget>[
              Image.network(
                'http://img5.mtime.cn/mt/2020/10/10/111703.25015879_180X260X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2020/12/15/123841.10782003_180X260X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2020/09/10/091215.17558114_180X260X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2020/08/26/164823.42526363_180X260X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2017/10/31/151824.97647389_135X190X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2020/10/01/115233.44324693_135X190X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2020/08/07/112210.24896484_135X190X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2020/11/26/101617.43378907_135X190X4.jpg',
                fit: BoxFit.cover,
              ),
              Image.network(
                'http://img5.mtime.cn/mt/2020/01/08/144722.88106930_135X190X4.jpg',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ));
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
