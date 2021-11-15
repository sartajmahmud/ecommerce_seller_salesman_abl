
import 'package:flutter/material.dart';
import 'package:seller_salesman_ecommerce/widgets/OrderHistoryCardWidget.dart';

class OrderHistoryScreen extends StatefulWidget {
  OrderHistoryScreen();

  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.of(context, rootNavigator: true).pop(context);
        //   },
        //   child: Container(
        //     padding: EdgeInsets.only(left: 25),
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Text('Order History',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
        ),
      ),
      body: SafeArea(child: Container(child: Column(
        children: [
          OrderHistoryCardWidget()
        ],
      ))),
    );
  }
}
