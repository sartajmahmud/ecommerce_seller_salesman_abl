
import 'package:flutter/material.dart';
import 'package:seller_salesman_ecommerce/widgets/app_text.dart';

class SalesmanMainLayout extends StatefulWidget {
  SalesmanMainLayout();

  @override
  _SalesmanMainLayoutState createState() => _SalesmanMainLayoutState();
}

class _SalesmanMainLayoutState extends State<SalesmanMainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(child: Container(child: Text('Salesman'),)),
    );
  }
}
