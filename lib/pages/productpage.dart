import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:th_buoi1/model/products.dart';

import 'package:th_buoi1/detail/components/body.dart';

class ProductPage extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)?.settings.arguments as ProductDetailsArguments;

    debugPrint(arguments.product.toString());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Details"),
      ),
      body: Body(product: arguments.product),
    );
  }
}

class ProductDetailsArguments {
  final Products? product;

  ProductDetailsArguments({this.product});
}
