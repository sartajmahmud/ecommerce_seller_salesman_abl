import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:seller_salesman_ecommerce/screens/ForgetPasswordScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SellerScreens/HomeScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SellerScreens/NotificationDetailsScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SellerScreens/NotificationsScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SellerScreens/OrderDetailsScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SellerScreens/ProductRequisitionScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SellerScreens/UserDetailsScreen.dart';
import 'package:seller_salesman_ecommerce/screens/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/LoginScreen.dart';
import 'screens/SellerScreens/MainLayout.dart';
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
        '/mainlayout': (context) => MainLayout(),
        '/notificationsScreen': (context) => NotificationsScreen(),
        '/orderDetails': (context) => OrderDetailsScreen(),
        '/notificationDetailsScreen': (context) => NotificationDetailsScreen(),
        '/userDetailsScreen': (context) => UserDetailsScreen(),
        '/productReqScreen': (context) => ProductRequisitionScreen(),
      },
      //home: SplashScreen(),
    );
  }
}
