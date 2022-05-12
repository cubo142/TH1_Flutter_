import 'package:flutter/material.dart';

import 'category_detail.dart';

class Body extends StatelessWidget{
  final int cateID;
  const Body(this.cateID, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Container(
      child: CategoryDetail(cateID),
    );
  }
}