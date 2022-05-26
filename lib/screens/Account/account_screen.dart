import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobilexchangestore/model/user_model.dart';
import 'package:mobilexchangestore/screens/Login/signup_screen/login_screen.dart';

class account_screen extends StatefulWidget {
  const account_screen({Key? key}) : super(key: key);
  static String routeName = "/account";
  @override
  _account_screenState createState() => _account_screenState();
}

class _account_screenState extends State<account_screen> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text("Account"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                "Welcome Mr/Ms",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Text("${loggedInUser.firstName} ${loggedInUser.secondName}",
                  style: TextStyle(color: Colors.black, fontSize: 26)),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 180,
                child: Image.asset(
                  "Assets/images.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
              ),
              Text("Email : ${loggedInUser.email}",
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              SizedBox(
                height: 30,
              ),
              Text(
                "Phone Number : ${loggedInUser.phoneNumber}",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Logout",
          onPressed: () {
            logout(context);
          },
          child: Icon(Icons.logout),
        ));
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginScreen()),
        (Route<dynamic> route) => false);
  }
}
