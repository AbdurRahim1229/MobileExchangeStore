import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobilexchangestore/model/product_model.dart';
import 'package:mobilexchangestore/screens/Detail_Screen/Body.dart';
import 'package:mobilexchangestore/size_config.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              icon: SvgPicture.asset('Assets/Cart Icon.svg'),
              color: Colors.amber,
              onPressed: () {}),
          SizedBox(height: getProportionateScreenHeight(20)),
        ],
      ),
      body: Body(product: product),
    );
  }
}
