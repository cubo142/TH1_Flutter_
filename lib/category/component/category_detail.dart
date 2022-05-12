import 'package:flutter/material.dart';

import 'package:th_buoi1/model/products.dart';
import 'package:th_buoi1/model/utilities.dart';

import '../../pages/productpage.dart';

class CategoryDetail extends StatefulWidget {
  int id;
  CategoryDetail(this.id);

  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return buildListView(Utilities().getProductFormCate(widget.id));
  }

  ListView buildListView(List<Products> data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: data[index].id != null
                ? Image.asset(data[index].image!)
                : null, //thay doi code
            title: Text(data[index].title.toString()), //thay doi code
            trailing: Text(data[index].price.toString()),
            onTap: () {
              Navigator.pushNamed(context, ProductPage.routeName,
                  arguments: ProductDetailsArguments(
                      product: data[index])); //thay doi code
            },
          );
        });
  }
}
