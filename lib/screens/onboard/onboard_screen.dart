import 'package:flutter/material.dart';
import 'package:foodhunter/screens/onboard/components/body.dart';
import 'package:foodhunter/size_config.dart';


class Onboard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:BodyOnboard()
    );
  }
}