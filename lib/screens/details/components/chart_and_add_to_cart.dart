import 'package:flutter/material.dart';

import '../../../container.dart';

class ChartAndAddToCart extends StatelessWidget {
  const ChartAndAddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Color(0xFFFCBF1E),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(
            Icons.chat,color: Colors.blue,
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart,color: Colors.blueAccent,),
              label: Text(
                "Add to Card",
                style: TextStyle(color: Colors.white),
              )
              
              )
        ],
      ),
    );
  }
}
