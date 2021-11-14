
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:seller_salesman_ecommerce/controllers/SplashScreenController.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends StateMVC<SplashScreen> {
  SplashScreenController _con;

  _SplashScreenState() : super(SplashScreenController()) {
    _con = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7C7C7C),
      body: Center(
        child: Image.asset(
          "assets/images/bizol_logo.png",
        scale: 7,
      ),
      ),
    );
  }
}
