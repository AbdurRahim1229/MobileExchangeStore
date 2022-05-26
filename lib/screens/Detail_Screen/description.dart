import 'package:flutter/material.dart';
import 'package:mobilexchangestore/model/product_model.dart';
import 'package:mobilexchangestore/size_config.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(20)),
      child: Expanded(
        child: Text(
          product.description,
          style: TextStyle(height: 1.5),
        ),
      ),
    );
  }
}
