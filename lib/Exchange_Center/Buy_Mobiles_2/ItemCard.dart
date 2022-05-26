import 'package:flutter/material.dart';
import 'package:mobilexchangestore/model/product_model.dart';

import '../../constants.dart';
import '../../size_config.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  final GestureTapCallback press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
    price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(2),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.network(product.imageurl),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: getProportionateScreenHeight(5)),


            child: Text(
              product.title,
              style: TextStyle(color: kTextColor),
            ),
          ),
          Text(
            "\Tk${product.price}",
          )
        ],
      ),
    );
  }
}
