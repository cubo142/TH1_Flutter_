import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:th_buoi1/home/components/fragment/home_fragment.dart';
import 'package:th_buoi1/home/components/fragment/home_fragment_product.dart';
import 'package:th_buoi1/model/products.dart';
import 'package:th_buoi1/pages/productpage.dart';

import '../../pages/cartpage.dart';

class HomeHeader extends StatefulWidget {
  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}
String name = "";


final product = Products.init();
final productList = product.where((p) => p.title == name).toList();

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: (val) {
              setState(() {
                name = val;

              });
            },
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)),
          ),
        ),
       
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, CartPage.routeName);
          },
          child: Container(
              height: 40,
              width: 40,
              padding: EdgeInsets.all(10),
              child: Icon(Icons.shopping_cart_outlined)),
        )
      ],
    );
  }
}
