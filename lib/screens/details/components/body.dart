import 'package:flutter/material.dart';
import 'package:solarapp/container.dart';
import 'package:solarapp/models/product.dart';
import 'package:solarapp/screens/details/components/product_image.dart';
import 'chart_and_add_to_cart.dart';
import 'list_of_color.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //it return height and width
    return SafeArea(
      bottom: false,
          child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Hero(
                      tag: '${product.id}',
                                        child: ProductPoster(
                        size: size,
                        image: product.image,
                      ),
                    ),
                  ),
                  ListOfColor(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    '\Rs ${product.price}',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                      color: kSecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Text(
                      product.description,
                      style: TextStyle(color: kTextLightColor),
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  )
                ],
              ),
            ),
            ChartAndAddToCart()
          ],
        ),
      ),
    );
  }
}

