import 'products.dart';
import 'carts.dart';

class Orders {
  int? orderID;
  String? date;
  String? status;
  double? sum;
  int? total;

  Orders({this.orderID,this.date,this.status,this.sum,this.total});

  List<Orders> order = [];
}
