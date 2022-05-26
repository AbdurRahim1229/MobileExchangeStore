import 'package:flutter/material.dart';

import 'package:mobilexchangestore/Exchange_Center/Price%20reductor/body_c.dart';

import 'package:mobilexchangestore/model/used_product_model.dart';

import '../../size_config.dart';

class exchangeInputScreen extends StatelessWidget {
  final usedProduct product;
  const exchangeInputScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body_c(product: product),
    );
  }
}
