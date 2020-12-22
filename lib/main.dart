import 'package:flutter/material.dart';

//D:\Program Files\Nox\bin
// nox_adb.exe connect 127.0.0.1:62001
// import 'package:flutter_app_test/main1.dart';
class Product {
  final String title; //商品标题
  final String description; //商品描述
  Product(this.title, this.description);
}

void main(List<String> args) {
  runApp(MaterialApp(
      title: '导航数据传递接受',
      home: ProductList(
        products: List.generate(
            20, (index) => Product("商品 $index", '商品描述，编号：$index')),
      )));
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail(product: products[index]),
                  ));
            },
          );
        },
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;
  // const ProductDetail({Key key}) : super(key: key);
  ProductDetail({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情，${product.title}'),
      ),
      body: Center(child: Text('${product.description}')),
    );
  }
}
