import 'package:flutter/material.dart';
import 'package:solarapp/container.dart';
import 'package:solarapp/models/product.dart';
import 'package:solarapp/screens/details/details_screen.dart';

import 'package:solarapp/screens/products/components/product_card.dart';

import 'package:solarapp/screens/products/components/search_box.dart';

import 'category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(onChanged: (value) => {}),
          CategoriesList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    )),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCart(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  },
                  itemIndex: index,
                  product: products[index],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
