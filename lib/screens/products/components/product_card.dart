import 'package:flutter/material.dart';
import 'package:solarapp/models/product.dart';

import '../../../container.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    Key key,
    this.itemIndex,
    this.product, this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      //   color: Colors.blueAccent,
      height: 160,
      child: InkWell(
        onTap: press,
              child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            //this is our background
            Container(
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
                boxShadow: [kdefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22), color: Colors.white),
              ),
            ),
            //our images
            Positioned(
              top: 16,
              right: 0,
              child: Hero(
                 tag: '${product.id}',
                              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  width: 200,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            //product title and product
            Positioned(
                left: 0,
                bottom: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width - 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5, //30padding
                            vertical: kDefaultPadding / 4 //5 top and button
                            ),
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(22),
                              topRight: Radius.circular(22),
                            )),
                        child: Text(
                          "\Rs ${product.price}",
                          style: Theme.of(context).textTheme.button,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
