import 'package:flutter/material.dart';
import '../../pages/cartpage.dart';
import 'package:th_buoi1/model/utilities.dart';
import 'package:th_buoi1/home/components/fragment/home_fragment.dart';
import 'package:th_buoi1/home/components/fragment/favorite_fragment.dart';
import 'package:th_buoi1/home/components/fragment/account_detail.dart';
import 'package:th_buoi1/home/components/fragment/notification_fragment.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
String name = "";
class _BodyState extends State<Body> {
  var selectIndex = 0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    List<Widget> screen = [
      HomeDetail(name: name),
      FavoriteDetail(Utilities.data),
      // NotificationDetail(),
      AccountDetail(),
      NotificationDetail(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: flag ? AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search product",
                    prefixIcon: Icon(Icons.search)),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CartPage.routeName);
              },
              child: Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.shopping_cart_outlined)),
            )
          ],
        )
      ):null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
            if (selectIndex != 2) {
              flag = true;
            } else {
              flag = false;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            screen[selectIndex]
          ],
        ),
      ),
    );
  }
}
