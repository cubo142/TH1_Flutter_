import 'package:flutter/material.dart';
import 'package:th_buoi1/pages/homepage.dart';

import 'package:th_buoi1/category/component/body.dart';

class CategoryPage extends StatelessWidget {
  static String routeName = "/category_detail";

  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: const Text("Category Details"),
        ),
        body: Body(ModalRoute.of(context)?.settings.arguments as int));
  }
}
