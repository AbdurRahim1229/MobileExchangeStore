import 'package:flutter/material.dart';
import 'package:mobilexchangestore/Exchange_Center/Price%20reductor/exchangeInputScreen.dart';

import 'package:mobilexchangestore/model/used_product_model.dart';
import 'package:mobilexchangestore/Exchange_Center/Buy_Mobiles_1/ItemCard.dart';

import 'package:mobilexchangestore/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Text('Choose your used mobile that you want to exchange'),
        SizedBox(
          height: 10,
        ),
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
                            builder: (context) => exchangeInputScreen(
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
