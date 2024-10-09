// import 'package:desi_mart/Login_Screen/login.dart';
import 'package:desi_mart/Signup_Screen/signup.dart';
import 'package:desi_mart/splash%20Screen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}
