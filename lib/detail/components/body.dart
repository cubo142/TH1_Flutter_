import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:quiver/iterables.dart';
import 'package:th_buoi1/model/categories.dart';
import 'package:th_buoi1/model/utilities.dart';
import 'addtocart.dart';
import 'package:th_buoi1/category/component/category_detail.dart';
import 'package:th_buoi1/model/products.dart';

class Body extends StatefulWidget {
  Products? product;

  Body({this.product});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var quantity = 1;
  @override
  Widget build(BuildContext context) {
    final categories = Categories.init();
    var category =
    categories.firstWhere((item) => item.id == widget.product!.cateID);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text("Title: ${widget.product!.title}"),
            flex: 1,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset(widget.product!.image!)),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Text("Description: ${widget.product!.description}"),
            flex: 4,
          ),
          Expanded(
            child: Text("Price: ${widget.product!.price}"),
            flex: 1,
          ),
          Row(children: [
            Expanded(
              child: Text("Category: ${category.title}"),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if(quantity >= 2)
                    {
                      quantity--;
                      widget.product?.quantity = quantity;
                    }
                  });
                },
                icon: Icon(
                  Icons.remove_circle,
                ),
              ),
            ),
            Expanded(
              child: Text("${quantity}"),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    quantity++;
                    widget.product?.quantity = quantity;
                  });
                },
                icon: Icon(
                  Icons.add_circle,
                ),
              ),
            ),
          ]),
          AddProductToCart(
            product: widget.product!, quantity: quantity
          )
        ],
      ),
    );
  }
}