import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home_fragment_categories.dart';
import 'home_fragment_product.dart';

class HomeDetail extends StatefulWidget {
  @override
  State<HomeDetail> createState() => _HomeDetailState();
  HomeDetail({this.name});
  String? name;
}

class _HomeDetailState extends State<HomeDetail> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CategoriesStore(),
          ProductPopular(name: this.widget.name,)
        ],
      ),
    );

  }
}
