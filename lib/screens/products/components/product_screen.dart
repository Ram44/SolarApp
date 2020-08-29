import 'package:flutter/material.dart';
import 'package:solarapp/container.dart';
import 'package:solarapp/screens/products/components/body.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(
       
      ),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      
      title: Text("Dashboard"),
      elevation: 0.0,
      centerTitle: false,
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_active),
          onPressed: () {
            print("you click me -- notification");
          },
        ),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
      ],
    );
  }
}
