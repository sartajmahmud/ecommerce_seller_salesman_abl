
import 'package:flutter/material.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen();

  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
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
          child: Text('Inventory',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                        flex:1,
                          child: Image.asset('assets/images/Bizol_G+.jpg')),
                      Expanded(
                        flex:4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Bizol G+ 4L',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                              Text('Price : 4800')
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Center(child: Text('193')),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(thickness: 2,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Expanded(
                          flex:1,
                          child: Image.asset('assets/images/Bizol_All_Rounder.jpg')),
                      Expanded(
                        flex:4,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Bizol All Rounder 4L',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('Price : 4500')
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Center(child: Text('193')),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(thickness: 2,),
            ],
          ),
        ),
      ),
    );
  }
}
