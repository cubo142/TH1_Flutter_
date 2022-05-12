import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:th_buoi1/model/carts.dart';
import 'package:th_buoi1/model/products.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddProductToCart extends StatefulWidget {
  Products? product;
  int? quantity;

  AddProductToCart({this.product,this.quantity});
  @override
  _AddProductToCartState createState() => _AddProductToCartState();
}

class _AddProductToCartState extends State<AddProductToCart> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton( //thay doi code
        onPressed: () {
          Cart cart = Cart();
          cart.addProductToCart(widget.product!);
          print(cart.getCart().length.toString());
          Fluttertoast.showToast(
              msg: "Add to cart",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        },
        style: ElevatedButton.styleFrom( //thay doi code
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Colors.green,
        ),
        child: Text("Add to cart", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),),
    );
  }
}