import 'package:flutter/material.dart';
import 'package:seller_salesman_ecommerce/models/grocery_item.dart';
import 'package:seller_salesman_ecommerce/styles/colors.dart';
import 'app_text.dart';
import 'item_counter_widget.dart';

class CartItemWidget extends StatefulWidget {
  CartItemWidget({Key key, this.item}) : super(key: key);
  final GroceryItem item;

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  final double height = 110;

  final Color borderColor = Color(0xffE2E2E2);

  final double borderRadius = 18;

  int amount = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            imageWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.item.name,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                    text: widget.item.description,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkGrey),
                SizedBox(
                  height: 12,
                ),
                Spacer(),
                ItemCounterWidget(
                  onAmountChanged: (newAmount) {
                    setState(() {
                      amount = newAmount;
                    });
                  },
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: (){
                    //remove from cart logic
                  },
                  icon :Icon(Icons.close, size: 25,),
                  color: AppColors.darkGrey,
                  //size: 25,
                ),
                Spacer(
                  flex: 4,
                ),
                Container(
                  width: 70,
                  child: AppText(
                    text: "\৳${getPrice().toStringAsFixed(2)}",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.right,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      width: 100,
      child: Image.asset(widget.item.imagePath),
    );
  }

  double getPrice() {
    return widget.item.price * amount;
  }
}
