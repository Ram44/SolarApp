import 'package:flutter/material.dart';

import '../../../container.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({
    Key key,
    @required this.size, this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      //  color: Colors.black,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
          Image.asset(
           image,
            fit: BoxFit.cover,
            width: size.width * 0.5,
            height: size.width * 0.5,
          ),
        ],
      ),
    );
  }
}
