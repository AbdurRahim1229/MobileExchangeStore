import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobilexchangestore/model/product_model.dart';
import 'package:mobilexchangestore/screens/Home/home_screen.dart';

import '../../size_config.dart';

class final_page extends StatelessWidget {
  final int price;
  final Product product;
  final String title;
  const final_page(
      {Key? key,
      required this.price,
      required this.product,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var price1 = product.price;
    var title1 = product.title;
    var eprice = price1 - price;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
// passing this to our root
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Container(
                    color: Colors.white,
                    child: Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: Form(
                            child: Expanded(
                          child: Column(
                            children: [
                              Text(
                                  "We estimate the current price of your used '$title' Upto  '$price' tk ",
                                  style: TextStyle(
                                      color: Colors.brown, fontSize: 16)),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Text(
                                  "Original price of Brand new '$title1' that you want to buy is '$price1' tk",
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 18)),
                              SizedBox(
                                  height: getProportionateScreenHeight(20)),
                              Text(
                                  "But you can buy '$title1' for only '$eprice' tk via Exchange with your used '$title' Now",
                                  style: TextStyle(
                                      color: Colors.deepOrange, fontSize: 22)),
                              SizedBox(
                                  height: getProportionateScreenHeight(40)),
                              Material(
                                elevation: 5,
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.amber,
                                child: MaterialButton(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 15, 20, 15),
                                    minWidth: MediaQuery.of(context).size.width,
                                    onPressed: () {
                                      Fluttertoast.showToast(
                                          msg:
                                              "Your Exchange is confirmed , We will contact You soon  ");
                                    },
                                    child: Text(
                                      "Confirm Exchange",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    )),
                              ),
                              SizedBox(height: 50),
                              (Text(
                                  "*Please note that the estimated value & Exchange price is not the final price.Final Exchange price will be given after cross verification of your used $title device",
                                  style: TextStyle(fontSize: 10))),
                              SizedBox(
                                height: 80,
                              ),
                              ActionChip(
                                  label: Text("Back to home"),
                                  onPressed: () =>
                                      Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          home_screen.routeName,
                                          (route) => false))
                            ],
                          ),
                        )))))));
  }
}
