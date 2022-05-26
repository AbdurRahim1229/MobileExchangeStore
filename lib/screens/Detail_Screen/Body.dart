import 'package:flutter/material.dart';
import 'package:mobilexchangestore/model/product_model.dart';
import 'package:mobilexchangestore/screens/Detail_Screen/Add_to_Cart.dart';
import 'package:mobilexchangestore/screens/Detail_Screen/Product_Title_Image.dart';
import 'package:mobilexchangestore/screens/Detail_Screen/description.dart';
import 'package:mobilexchangestore/size_config.dart';
import 'package:mobilexchangestore/screens/Home/home_screen.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: getProportionateScreenHeight(10),
                    right: getProportionateScreenHeight(10),
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Description(product: product),
                      SizedBox(height: getProportionateScreenHeight(20) / 2),
                      AddToCart(product: product),
                      SizedBox(
                        height: 100,
                      ),
                      ActionChip(
                          label: Text("Back to home"),
                          onPressed: () => Navigator.pushNamedAndRemoveUntil(
                              context, home_screen.routeName, (route) => false))
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
