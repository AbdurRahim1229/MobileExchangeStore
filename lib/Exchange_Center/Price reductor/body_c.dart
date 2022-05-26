import 'package:flutter/material.dart';
import 'package:mobilexchangestore/Exchange_Center/Buy_Mobiles_2/buy_mobiles.dart';

import 'package:mobilexchangestore/model/used_product_model.dart';

class body_c extends StatefulWidget {
  const body_c({Key? key, required this.product}) : super(key: key);

  final usedProduct product;

  @override
  _body_cState createState() => _body_cState();
}

class _body_cState extends State<body_c> {
  String bdropDownValue = 'Less than 12 hours'; //initialvalue

  final List<String> bItems = [
    'Less than 6 hours',
    'Less than 12 hours',
    'Less than 24 hours'
  ];

  String cdropDownValue = 'Camera has minor problems'; //initialvalue

  final List<String> cItems = [
    'Camera has no problems',
    'Camera has minor problems',
    'Camera has major problems'
  ];

  String pdropDownValue = 'Lags sometimes'; //initialvalue

  final List<String> pItems = ['Lags rarely', 'Lags sometimes', 'Lags a lot'];

  String udropDownValue = 'Less than 1 year'; //initialvalue

  final List<String> uItems = [
    'Less than 6 month',
    'Less than 1 year',
    'Less than 2 year',
    'More than 2 year'
  ];

  void calculator(
      String batteryS, String cameraS, String performanceS, String usageS) {
    int actualprice = widget.product.price.toInt();

    switch (batteryS) {
      case 'Less than 6 hours':
        actualprice = ((actualprice * (82 / 100)).floor());
        break;
      case 'Less than 12 hours':
        actualprice = ((actualprice * (88 / 100)).floor());
        break;
      case 'Less than 24 hours':
        actualprice = ((actualprice * (94 / 100)).floor());
        break;
    }

    switch (cameraS) {
      case 'Camera has no problems':
        actualprice = ((actualprice * (95 / 100)).floor());
        break;
      case 'Camera has minor problems':
        actualprice = ((actualprice * (88 / 100)).floor());
        break;
      case 'Camera has major problems':
        actualprice = ((actualprice * (82 / 100)).floor());
        break;
    }

    switch (performanceS) {
      case 'Lags a lot':
        actualprice = ((actualprice * (78 / 100)).floor());
        break;
      case 'Lags sometimes':
        actualprice = ((actualprice * (85 / 100)).floor());
        break;
      case 'Lags rarely':
        actualprice = ((actualprice * (92 / 100)).floor());
        break;
    }
    switch (usageS) {
      case 'Less than 6 month':
        actualprice = ((actualprice * (92 / 100)).floor());
        break;
      case 'Less than 1 year':
        actualprice = ((actualprice * (88 / 100)).floor());
        break;
      case 'Less than 2 year':
        actualprice = ((actualprice * (82 / 100)).floor());
        break;
      case 'More than 2 year':
        actualprice = ((actualprice * (75 / 100)).floor());
        break;
    }

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => buy_mobiles_ex2(
                price: actualprice, title: widget.product.title)));
  }

  @override
  Widget build(BuildContext context) {
    var etitle = widget.product.title;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Selected device for Exchange: $etitle ',
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        centerTitle: true,
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
              padding: const EdgeInsets.all(30.0),
              child: Form(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 35),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                          value: bdropDownValue,
                          items: bItems.map((bItems) {
                            return DropdownMenuItem(
                              value: bItems,
                              child: Text(bItems),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              bdropDownValue = value!;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            labelText: "Choose your phones Battery Life",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                          value: cdropDownValue,
                          items: cItems.map((cItems) {
                            return DropdownMenuItem(
                              value: cItems,
                              child: Text(cItems),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              cdropDownValue = value!;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            labelText: "Choose your phones Camera Condition",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                          value: pdropDownValue,
                          items: pItems.map((pItems) {
                            return DropdownMenuItem(
                              value: pItems,
                              child: Text(pItems),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              pdropDownValue = value!;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            labelText:
                                "Choose your phones Performance condition",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                          value: udropDownValue,
                          items: uItems.map((uItems) {
                            return DropdownMenuItem(
                              value: uItems,
                              child: Text(uItems),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              udropDownValue = value!;
                            });
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            labelText: "Choose your phones Usage Duration",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                      SizedBox(height: 40),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amber,
                        child: MaterialButton(
                            padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            minWidth: MediaQuery.of(context).size.width,
                            onPressed: () {
                              calculator(bdropDownValue, cdropDownValue,
                                  pdropDownValue, udropDownValue);
                            },
                            child: Text(
                              "Continue",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(height: 50),
                      (Text(
                          "*Please note that based on your chosen options we will estimate a price but this is not the final price.All the options you choose here will be cross verified later during physical checking of your device",
                          style: TextStyle(fontSize: 10))),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
