
import 'package:flutter/material.dart';

class PointOfSales extends StatefulWidget {
   PointOfSales();

  @override
  _PointOfSalesState createState() => _PointOfSalesState();
}

class _PointOfSalesState extends State<PointOfSales> {
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
          child: Text('Point Of Sales',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text('Point of sales screen'),
        ),
      ),
    );
  }
}
