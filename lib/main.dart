import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:seller_salesman_ecommerce/screens/ForgetPasswordScreen.dart';
import 'package:seller_salesman_ecommerce/screens/HomeScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/LoginScreen.dart';
import 'screens/SignUpScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset("configurations");
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/forgetPass': (context) => ForgetPasswordScreen(),
        '/home': (context) => HomeScreen(),
      },
      //home: SplashScreen(),
    );
  }
}
