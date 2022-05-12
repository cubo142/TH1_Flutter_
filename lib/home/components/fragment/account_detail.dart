import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:th_buoi1/model/user.dart';
import 'package:th_buoi1/pages/homepage.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  var prefs;
  final username = TextEditingController();
  final password = TextEditingController();
  final fullname = TextEditingController();
  final address = TextEditingController();
  final phone = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  _getData() async {
    prefs = await SharedPreferences.getInstance();
    username.text = prefs.getString('username');
    password.text = prefs.getString('password');
    address.text = prefs.getString('address');
    phone.text = prefs.getString('phone');
    fullname.text = prefs.getString('fullname');
  }

  _deleteData() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    // _getData();
    return Column(children: [
      Menuheader(),
      Form(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 7,
              ),
              fullnameTextFormField(),
              SizedBox(
                height: 7,
              ),
              emailTextFormField(),
              SizedBox(
                height: 7,
              ),
              passwordTextFormField(),
              SizedBox(
                height: 7,
              ),
              addressTextFormField(),
              SizedBox(
                height: 7,
              ),
              phoneTextFormField(),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    //thay doi code
                    onPressed: () async {
                      // obtain shared preferences
                      prefs = await SharedPreferences.getInstance();
                      prefs.setString('username', username.text);
                      prefs.setString('password', password.text);
                      prefs.setString('fullname', fullname.text);
                      prefs.setString('address', address.text);
                      prefs.setString('phone', phone.text);

                      Navigator.pushReplacementNamed(
                          context, HomePage.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      //thay doi code
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      primary: Colors.green,
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      )
    ]);
  }

  TextFormField emailTextFormField() {
    return TextFormField(
      enabled: false,
      controller: username,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your full name ",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.perm_identity_outlined)),
    );
  }

  TextFormField passwordTextFormField() {
    return TextFormField(
      enabled: false,
      obscureText: false,
      controller: password,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your password ",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.lock_outline)),
    );
  }

  TextFormField fullnameTextFormField() {
    return TextFormField(
      controller: fullname,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your full name ",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.perm_identity_outlined)),
    );
  }

  TextFormField addressTextFormField() {
    return TextFormField(
      controller: address,
      keyboardType: TextInputType.streetAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your address",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_on_outlined)),
    );
  }

  TextFormField phoneTextFormField() {
    return TextFormField(
      controller: phone,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your phone",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.phone_outlined)),
    );
  }

  Widget Menuheader() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(color: Colors.green),
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "Account info",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            )));
  }
}
