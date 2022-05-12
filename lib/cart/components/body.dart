import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'checkoutcart.dart';
import 'package:th_buoi1/model/carts.dart';
import 'package:th_buoi1/model/products.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Products> cartdetails = Cart().getCart();
  double sum = 0.0;
  int total = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cartdetails.forEach((product) {
      sum = sum + product.price! * product.quantity!;
      total = total + product.quantity!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: cartdetails.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        child: CartItem(
                          product: cartdetails[index],
                        ),
                        onTap: () {
                          setState(() {
                            cartdetails.removeAt(index);
                            sum = 0.0;
                            cartdetails.forEach((product) {
                              sum = sum + product.price! * product.quantity!;
                            });
                          });
                        },
                      ),
                      Divider()
                    ],
                  );
                }),
          ),
          CheckOutCart(
            sum: sum, total: total
          )
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  Products? product;

  CartItem({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF5F5F5),
      padding: EdgeInsets.all(16),
      child: Row(children: [
        SizedBox(width: 100, height: 100, child: Image.asset(product?.image as String)),
        Expanded(child: Text(product?.title as String)),
        Expanded(child: Text(product?.price.toString() as String)),
        Expanded(child: Text(product?.quantity.toString()  as String )),
        Icon(Icons.delete_outlined)
      ]),
    );
  }
}
