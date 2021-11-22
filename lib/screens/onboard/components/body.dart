import 'package:flutter/material.dart';
import 'package:foodhunter/components/button.dart';
import 'package:foodhunter/constants.dart';
import 'package:foodhunter/size_config.dart';


import 'content.dart';


class BodyOnboard extends StatefulWidget {

  @override
  _BodyOnboardState createState() => _BodyOnboardState();
}

class _BodyOnboardState extends State<BodyOnboard> {
  int currentPage = 0;
 var OnboardData = [
    {
      "image": "assets/images/image2.png",
       "text": "Fast Food Delievery",
      "text_1": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "image": "assets/images/image3.png",
      "text": "Good Quality",
      "text_1": "Lorem2"
    },
    {
      "image": "assets/images/image4.png",
      "text": "Location",
      "text_1": "Lorem3"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: OnboardData.length,
                itemBuilder: (context, index) =>
                    OnboardContent(
                      image: OnboardData[index]['image'],
                      // title: OnboardData[index]['text_1'],
                      text:OnboardData[index]['text'],




                    ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionalScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        OnboardData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Start",
                      // press: () {
                      //   Navigator.pushNamed(context, SignInScreen.routeName);
                      // },
                    ),
                    Spacer(),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 10),
      height: 10,
      width: currentPage == index ? 10 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}