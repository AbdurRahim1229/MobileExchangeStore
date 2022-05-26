import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobilexchangestore/Exchange_Center/Buy_Mobiles_2/Body.dart';

import 'package:mobilexchangestore/size_config.dart';

class buy_mobiles_ex2 extends StatelessWidget {
  final int price;
  final String title;
  const buy_mobiles_ex2({Key? key, required this.price, required this.title})
      : super(key: key);
  static String routeName = '/buy_mobiles_ex1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Exchange Now",
          style: TextStyle(color: Colors.deepOrange),
        ),
        centerTitle: true,
        elevation: 1,
        actions: [
          IconButton(
              icon: SvgPicture.asset('Assets/Cart Icon.svg'),
              color: Colors.amber,
              onPressed: () {}),
          SizedBox(height: getProportionateScreenHeight(20)),
        ],
      ),
      body: Body(pprice: price, ptitle: title),
    );
  }
}
