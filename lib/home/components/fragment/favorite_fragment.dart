import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:th_buoi1/model/products.dart';
import 'package:th_buoi1/model/utilities.dart';

import '../../../model/categories.dart';

class FavoriteDetail extends StatelessWidget {
  List<Products> products;
  Products? product;


  FavoriteDetail(this.products);

  @override
  Widget build(BuildContext context) {
    //Map<Key, Value>
    //Mỗi key là duy nhất
    //value có thể giống nhau
    //Kiểu giá trị có thể là bất cứ kiểu giá trị nào
    final Map<int, Products> uniqueArr = new Map();
    products.forEach((p) {
      //gán key "cateID" = value "Products"
      // => với mỗi value "Products" sẽ được gán với duy nhất 1 key độc nhất
      // => mỗi khi "add to cart" thì "cartID" sẽ được lấy ra và gán 1 value
      // => vậy cartID đã được gán trước đó vẫn sẽ gán với giá trị cũ
      uniqueArr[p.cateID as int] = p;
    });
    products = uniqueArr.values.toList();

    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductItemList(
                product: products[index],
              );
            }),
      ),
    );
  }
}

class ProductItemList extends StatelessWidget {
  Products? product;
  final category = Categories.init();
  ProductItemList({this.product});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var cateObj = category.firstWhere((p) => p.id == product?.cateID);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                product!.image!,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: SizedBox(
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(product?.title as String),
                                Expanded(
                                    child: Text(
                                  product?.description as String,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                )),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Price'),
                                Expanded(
                                    child: Text(
                                  product?.price.toString() as String,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                Text('Category'),
                                Expanded(
                                    child: Text(
                                  cateObj?.title.toString() as String,
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                )),
                              ],
                            ),
                          ))
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
