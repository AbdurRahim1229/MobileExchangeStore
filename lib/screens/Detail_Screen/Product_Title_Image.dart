import 'package:flutter/material.dart';
import 'package:mobilexchangestore/constants.dart';
import 'package:mobilexchangestore/model/product_model.dart';
import 'package:mobilexchangestore/size_config.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
          ),
          Text(product.title, style: TextStyle(fontSize: 22)),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: " Price:${product.price}tk",
                      style: TextStyle(
                          fontSize: 19,
                          color: kTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Flexible(
                flex: 5,
                child: Image.network(
                  product.imageurl,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
