import 'package:flutter/material.dart';
import 'package:mobilexchangestore/screens/Buy_Mobiles/buy_mobiles.dart';
import 'package:mobilexchangestore/Exchange_Center/Buy_Mobiles_1/buy_mobiles.dart';

import '../../../size_config.dart';
import 'package:mobilexchangestore/screens/Account/account_screen.dart';
import 'section_title.dart';

class to_buy extends StatelessWidget {
  const to_buy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(10)),
        child: SectionTitle(
          title: "Buy Premium New Phones : ",
          press: () {},
        ),
      ),
      SizedBox(height: getProportionateScreenWidth(40)),
      SingleChildScrollView(
        child: Column(
          children: [
            Categories(
              image: "Assets/gsmarena_001.jpg",
              category: "New Exclusive Smartphones =>",
              press: () => Navigator.pushNamed(context, buy_mobiles.routeName),
            ),
            SizedBox(height: getProportionateScreenWidth(60)),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: SectionTitle(
                title: "Go To Exchange Center => ",
                press: () =>
                    Navigator.pushNamed(context, buy_mobiles_ex1.routeName),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(40)),
            Categories(
              image: "Assets/home3.png",
              category: "Exchange Now => ",
              press: () =>
                  Navigator.pushNamed(context, buy_mobiles_ex1.routeName),
            ),
          ],
        ),
      ),
    ]);
  }
}

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.category,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String category, image;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(320),
          height: getProportionateScreenWidth(180),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(image, fit: BoxFit.fill),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white, shadows: <Shadow>[
                        Shadow(
                          offset: Offset(5.0, 5.0),
                          blurRadius: 22.0,
                          color: Color(0xFF232222),
                        )
                      ]),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
