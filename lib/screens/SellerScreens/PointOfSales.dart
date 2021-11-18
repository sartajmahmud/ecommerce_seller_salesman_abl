import 'package:flutter/material.dart';
import 'package:seller_salesman_ecommerce/helpers/column_with_seprator.dart';
import 'package:seller_salesman_ecommerce/models/grocery_item.dart';
import 'package:seller_salesman_ecommerce/widgets/app_button.dart';
import 'package:seller_salesman_ecommerce/widgets/cart_item_widget.dart';

class PointOfSales extends StatefulWidget {
  PointOfSales();

  @override
  _PointOfSalesState createState() => _PointOfSalesState();
}

class _PointOfSalesState extends State<PointOfSales> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Products',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Cart',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
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
            child: Text(
              'Point Of Sales',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [POSContainer(), CartContainer()],
          ),
        ),
      ),
    );
  }

  Widget POSContainer() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * .35,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/Bizol_All_Rounder.jpg')),
                          Expanded(flex: 1, child: Center(child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text('Car Engine Oil',textAlign: TextAlign.center),
                          ))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * .35,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/coolant.jpg')),
                          Expanded(flex: 1, child: Center(child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text('Coolant',textAlign: TextAlign.center),
                          ))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * .35,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/Bizol_Moto.jpg')),
                          Expanded(flex: 1, child: Center(child: Text('Motorcycle Engine Oil',textAlign: TextAlign.center,))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * .35,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/Gear_Oil.jpg')),
                          Expanded(flex: 1, child: Center(child: Text('Gear Oil',textAlign: TextAlign.center))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * .35,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/Grease.jpg')),
                          Expanded(flex: 1, child: Center(child: Text('Grease',textAlign: TextAlign.center,))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width * .35,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Image.asset('assets/images/Gear_Oil.jpg')),
                          Expanded(flex: 1, child: Center(child: Text('Gear Oil',textAlign: TextAlign.center))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CartContainer() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: getChildrenWithSeperator(
                addToLastChild: false,
                widgets: demoItems.map((e) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    width: double.maxFinite,
                    child: CartItemWidget(
                      item: e,
                    ),
                  );
                }).toList(),
                seperator: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            getCheckoutButton(context)
          ],
        ),
      ),
    );
  }

  Widget getCheckoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: AppButton(
        label: "Confirm",
        fontWeight: FontWeight.w600,
        padding: EdgeInsets.symmetric(vertical: 30),
        trailingWidget: getButtonPriceWidget(),
        onPressed: () {
          //showBottomSheet(context);
          Navigator.pushNamed(context, '/deliveryMethodScreen');
          //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SellerSelectionScreen()));
          //navigate to checkoutScreen
        },
      ),
    );
  }

  Widget getButtonPriceWidget() {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Color(0xff489E67),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        "\৳12.96",
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
