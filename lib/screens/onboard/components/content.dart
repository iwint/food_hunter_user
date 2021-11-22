

import 'package:flutter/material.dart';
import 'package:foodhunter/constants.dart';
import 'package:foodhunter/size_config.dart';

// import 'package:google_fonts/google_fonts.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({Key? key, this.text, this.image}) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(flex: 15,),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(200),
          width: getProportionalScreenWidth(235),

        ),
      Spacer(flex: 1,),
        Text(
          text!,

          textAlign: TextAlign.center,

          style: TextStyle(
            fontSize: getProportionalScreenWidth(35),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),

        ),

        Spacer(flex: 2,),
        Text(
        '''Lorem ipsum dolor sit amet,   
  consectetur adipiscing elit.''',
        textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionalScreenWidth(15),
            height: 1.7,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
