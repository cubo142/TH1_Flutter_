import 'package:flutter/material.dart';

import '../../../model/carts.dart';
import '../../../model/products.dart';
import '../../../model/orders.dart';

class NotificationDetail extends StatefulWidget {
  const NotificationDetail({Key? key}) : super(key: key);


  @override
  State<NotificationDetail> createState() => _NotificationState();
}

class _NotificationState extends State<NotificationDetail> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cartdetails.forEach((product) {
      sum = sum + product.price! * product.quantity!;
    });
    cartdetails.forEach((product) {
      total = total + product.quantity!;
    });

  }

  List<Orders> orderDetail = [];
  List<Products> cartdetails = Cart().getCart();
  double sum = 0.0;
  int total = 0;

  @override
  Widget build(BuildContext context) {

    print(orderDetail);
    print(cartdetails.length);
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: cartdetails.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text("Total Price: ${sum}"),
                  Text("Total Product: ${cartdetails.length}"),
                  Text("Status: onDeliver"),
                  Divider()
                ],
              );
            }),

      );
  }
}
