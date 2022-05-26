import 'package:flutter/cupertino.dart';
import 'package:mobilexchangestore/screens/Account/account_screen.dart';
import 'package:mobilexchangestore/screens/Buy_Mobiles/buy_mobiles.dart';
import 'package:mobilexchangestore/Exchange_Center/Buy_Mobiles_1/buy_mobiles.dart';
import 'package:mobilexchangestore/screens/Home/home_screen.dart';
import 'package:mobilexchangestore/screens/Login/signup_screen/login_screen.dart';
import 'package:mobilexchangestore/screens/Login/signup_screen/registration_screen.dart';

final Map<String, WidgetBuilder> routes = {
  account_screen.routeName: (context) => account_screen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  home_screen.routeName: (context) => home_screen(),
  RegistrationScreen.routeName: (context) => RegistrationScreen(),
  buy_mobiles.routeName: (context) => buy_mobiles(),
  buy_mobiles_ex1.routeName: (context) => buy_mobiles_ex1(),
};
