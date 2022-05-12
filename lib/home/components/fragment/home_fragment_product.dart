import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:th_buoi1/home/components/homeheader.dart';

import 'package:th_buoi1/model/products.dart';
import 'package:th_buoi1/model/utilities.dart';

import '../../../pages/productpage.dart';

class ProductPopular extends StatefulWidget {
  @override
  State<ProductPopular> createState() => _ProductPopularState();
  String? name;
  ProductPopular({this.name});
}

final products = Products.init().toList();



// List productList = products.where((p) => p.title == widget.name).toList();

class _ProductPopularState extends State<ProductPopular> {
  @override
  Widget build(BuildContext context) {
    final productList = products.where((p) => p.title?.contains(this.widget.name as Pattern) as bool).toList();
    print("searcbar tai popularproduct:${this.widget.name}");
    print(productList);
    var productsAPI = Utilities().getProducts();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Expanded(child: Text('Popular Products ', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),)),
              Text('See more',
                style: TextStyle(fontSize: 16, color: Colors.lightGreen),),
            ],
          ),
          SizedBox(height: 10,),
          //Product list ở đây
          Container(
              child:
              GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.7

                  ),
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: productList[index],
                    );
                  })


          ),

        ],
      ),
    );

  }
}

class ProductItem extends StatelessWidget {
  Products? product;

  ProductItem({this.product});

  @override
  Widget build(BuildContext context) {
    if(product?.image != null){

    }
    //onPress event product item ở đây
    return GestureDetector(
      onTap: () {
        // print(product?.id.toString());
        Utilities.data.add(product!);
        Navigator.pushNamed(context, ProductPage.routeName,
            arguments: ProductDetailsArguments(product: product));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.asset(product!.image!, fit: BoxFit.fill,),
          Row(
            children: [
              Expanded(child: Text(product!.title!)),
              Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.green
                  ),
                  child: Text(product!.price.toString(), style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),)),
            ],
          )
        ],
      ),
    );
  }
}
