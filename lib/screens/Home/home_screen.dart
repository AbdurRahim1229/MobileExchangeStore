import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:mobilexchangestore/screens/Home/to_buy.dart';
import 'package:mobilexchangestore/screens/Account//account_screen.dart';

import '../../size_config.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          ElevatedButton.icon(
            icon: SvgPicture.asset(
              "Assets/User.svg",
              color: Colors.amber,
            ),
            label: Text('Account'),
            style: ElevatedButton.styleFrom(
              primary: Colors.white.withOpacity(1),
            ),
            onPressed: () =>
                Navigator.pushNamed(context, account_screen.routeName),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            to_buy(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ]),
        ),
      ),
    );
  }
}
