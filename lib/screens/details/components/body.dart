import 'package:flutter/material.dart';
import 'package:solarapp/container.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //it return height and width
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
       
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                height: size.width*0.8,
                //color: Colors.black,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: size.width *0.7,
                      width: size.width *0.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                    ),
                    Image.asset('assets/images/solar1.jpg',
                     height: size.width *0.7,
                      width: size.width *0.7,
                        fit: BoxFit.cover,
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
