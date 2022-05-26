import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobilexchangestore/screens/Buy_Mobiles/Body.dart';
import 'package:mobilexchangestore/size_config.dart';

class buy_mobiles extends StatelessWidget {
  const buy_mobiles({Key? key}) : super(key: key);
  static String routeName = '/buy_mobiles';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              icon: SvgPicture.asset('Assets/Cart Icon.svg'),
              color: Colors.amber,
              onPressed: () {}),
          SizedBox(height: getProportionateScreenHeight(20)),
        ],
      ),
      body: Body(),
    );
  }
}
