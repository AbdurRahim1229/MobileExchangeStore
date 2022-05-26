import 'package:mobilexchangestore/routes.dart';
import 'package:mobilexchangestore/screens/Home/home_screen.dart';
import 'package:mobilexchangestore/screens/Login/signup_screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email And Password Login',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black,
        hintColor: Colors.black,
        fontFamily: 'Anton',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const initializer(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}

class initializer extends StatefulWidget {
  const initializer({Key? key}) : super(key: key);

  @override
  _initializerState createState() => _initializerState();
}

class _initializerState extends State<initializer> {
  late FirebaseAuth _auth;
  late User? _user;
  bool isLoading = true;

  void initState() {
    super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser;
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : _user == null
            ? LoginScreen()
            : home_screen();
  }
}
