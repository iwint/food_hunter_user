import 'package:flutter/material.dart';
import 'package:foodhunter/constants.dart';
import 'package:foodhunter/size_config.dart';




class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width : getProportionalScreenWidth(150),
      height: getProportionateScreenHeight(50),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Colors.white,
          backgroundColor: kPrimaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: getProportionalScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}