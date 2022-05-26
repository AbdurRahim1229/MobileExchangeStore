import 'package:flutter/material.dart';
import 'package:mobilexchangestore/model/product_model.dart';

import 'package:mobilexchangestore/screens/Buy_Mobiles/ItemCard.dart';
import 'package:mobilexchangestore/screens/Detail_Screen/detail_screen.dart';
import 'package:mobilexchangestore/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: GridView.builder(
                itemCount: mobiles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: getProportionateScreenHeight(10),
                  crossAxisSpacing: getProportionateScreenWidth(10),
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: mobiles[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: mobiles[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
