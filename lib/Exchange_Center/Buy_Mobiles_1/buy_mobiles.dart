import 'package:flutter/material.dart';

import 'package:mobilexchangestore/Exchange_Center/Buy_Mobiles_1/Body.dart';

import 'package:mobilexchangestore/size_config.dart';

class buy_mobiles_ex1 extends StatelessWidget {
  const buy_mobiles_ex1({Key? key}) : super(key: key);
  static String routeName = '/buy_mobiles_ex1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Welcome to Exchange Center",
          style: TextStyle(fontSize: 20, color: Colors.deepOrange),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          SizedBox(height: getProportionateScreenHeight(20)),
        ],
      ),
      body: Body(),
    );
  }
}
