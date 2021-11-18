
import 'package:flutter/material.dart';
import 'package:seller_salesman_ecommerce/widgets/app_text.dart';

class OrderDetailsScreen extends StatefulWidget {
   OrderDetailsScreen();

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: "Order #1234",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text:'Order Details',fontSize: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    AppText(text:'Your order number:',fontSize: 16,),
                    Text('1234',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.lightBlue,
                      fontSize: 16
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text:'Ordered by:',fontSize: 16,),
                  Text('Sartaj Mahmud',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                        fontSize: 16
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text:'Customer Mobile No:',fontSize: 16,),
                  Text('01794613464',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16
                    ),),
                ],
              ),
            ),


            ///Need to add a button for navigating to Maps location screen
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex:1,child: AppText(text: '2x',fontSize: 16,fontWeight: FontWeight.w600,)),
                  Expanded(flex:6,child: AppText(text: 'Bizol Ultra Engine OIL 2L',fontSize: 15,)),
                  Expanded(flex:2,child: AppText(text: '\৳12.96',fontSize: 15,textAlign: TextAlign.end)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex:1,child: AppText(text: '2x',fontSize: 16,fontWeight: FontWeight.w600,)),
                  Expanded(flex:6,child: AppText(text: 'Bizol Ultra Engine OIL 2L',fontSize: 15,)),
                  Expanded(flex:2,child: AppText(text: '\৳12.96',fontSize: 15,textAlign: TextAlign.end)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(flex:1,child: AppText(text: '2x',fontSize: 16,fontWeight: FontWeight.w600,)),
                  Expanded(flex:6,child: AppText(text: 'Bizol Ultra Engine OIL 2L',fontSize: 15,)),
                  Expanded(flex:2,child: AppText(text: '\৳12.96',fontSize: 15,textAlign: TextAlign.end,)),
                ],
              ),
            ),
            ///listview of the order items.
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text:'Subtotal:',fontSize: 16,),
                  Text('\৳12.96',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text:'VAT (15%) :',fontSize: 16,),
                  Text('\৳12.96',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16
                    ),),
                ],
              ),
            ),
            Divider(thickness: 1,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(text:'Total:',fontSize: 16,),
                  Text('\৳12.96',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 16
                    ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
