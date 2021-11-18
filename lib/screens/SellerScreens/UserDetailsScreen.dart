import 'package:flutter/material.dart';
import 'package:seller_salesman_ecommerce/styles/colors.dart';
import 'package:seller_salesman_ecommerce/widgets/app_text.dart';

class UserDetailsScreen extends StatefulWidget {
  UserDetailsScreen();

  @override
  _UserDetailsScreenState createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
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
            text: "My Details",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading:
              SizedBox(width: 65, height: 65, child: getImageHeader()),
              title: AppText(
                text: "UserName",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              subtitle: AppText(
                text: "PhoneNumber/Email",
                color: Color(0xff7C7C7C),
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget getImageHeader() {
    String imagePath = "assets/images/user_profile.png";
    return CircleAvatar(
      radius: 5.0,
      backgroundImage: AssetImage(imagePath),
      backgroundColor: AppColors.primaryColor.withOpacity(0.7),
    );
  }
}
