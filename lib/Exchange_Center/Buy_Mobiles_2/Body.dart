import 'package:flutter/material.dart';
import 'package:mobilexchangestore/Exchange_Center/Buy_Mobiles_2/final_page.dart';

import 'package:mobilexchangestore/model/product_model.dart';

import 'package:mobilexchangestore/screens/Buy_Mobiles/ItemCard.dart';

import 'package:mobilexchangestore/size_config.dart';

class Body extends StatelessWidget {
  final int pprice;
  final String ptitle;
  const Body({Key? key, required this.pprice, required this.ptitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Text('Choose the mobile that You want to Buy'),
        SizedBox(height: 10),
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
                            builder: (context) => final_page(
                                product: mobiles[index],
                                price: pprice,
                                title: ptitle),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
