import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:easy_localization/easy_localization.dart';

import 'hoverAction.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    if (deviceWidth > 1110) {
      return Container(
        child: Column(
          children: [
            Container(
              height: 0.3,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildFooterRightMost(300),
                      //

                      buildThisPageButtons(context, 170),
                      buildOtherPageLinkButtons(context, 200),
                      // Container(
                      //   width: 400,
                      //   padding: EdgeInsets.symmetric(horizontal: 20),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       buildThisPageButtons(context, 170),
                      //       buildOtherPageLinkButtons(context, 200),
                      //     ],
                      //   ),
                      // ),
                      buildContactSection(context, 300),
                    ],
                  ),
                ],
              ),
            ),
            buildBottomBar(context),
          ],
        ),
      );
    } else if (deviceWidth > 855 && deviceWidth < 1110) {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildFooterRightMost(300),
                      buildThisPageButtons(context, 170),
                      buildOtherPageLinkButtons(context, 170),
                      // Container(
                      //   // width: 400,
                      //   padding: EdgeInsets.symmetric(horizontal: 20),
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       buildThisPageButtons(context, 170),
                      //       buildOtherPageLinkButtons(context, 170),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 15),
                  buildContactSection(context, 400),
                ],
              ),
            ),
            SizedBox(height: 15),
            buildBottomBar(context),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  buildFooterRightMost(deviceWidth),
                  SizedBox(height: 15),
                  Container(
                    width: deviceWidth,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildThisPageButtons(context, 130),
                        SizedBox(
                            width: deviceWidth < 500 ? 130 : null,
                            child: buildOtherPageLinkButtons(context, 130)),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  buildContactSection(context, 400),
                ],
              ),
            ),
            buildBottomBar(context),
          ],
        ),
      );
    }
  }

  Widget buildBottomBar(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "© 2020 - Bet Trends. " + 'footerBottom1'.tr().toString() + "\n",
            textAlign: TextAlign.justify,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 15,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'footerBottom2'.tr().toString(),
                ),
                TextSpan(
                  text: " " + 'footerLink'.tr().toString(),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      html.window
                          .open("https://www.joueurs-info-service.fr/", "Name");
                    },
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFooterRightMost(double newWidth) {
    return Container(
      width: newWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "images/logo.png",
              width: newWidth - 90,
            ),
          ),
          SizedBox(height: 10),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child:

          Text(
            'footerRight1'.tr().toString() +
                "\n\n" +
                'footerRight2'.tr().toString(),
            textAlign: TextAlign.justify,
            style: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(122, 122, 122, 1),
                fontSize: 17,
                height: 1.5),
          ),
          // ),
        ],
      ),
    );
  }

  Widget buildThisPageButtons(BuildContext context, double newWidth) {
    return Container(
      // width: newWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home', arguments: {'index': 1});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: 'home',
                // .tr().toString(),
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home', arguments: {'index': 2});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: 'features',
                // .tr().toString(),
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home', arguments: {'index': 3});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: 'price',
                // .tr().toString(),
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home', arguments: {'index': 4});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: 'users',
                // .tr().toString(),
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
              // buildItem('users'.tr().toString()),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOtherPageLinkButtons(BuildContext context, double newWidth) {
    return Container(
      // width: newWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/faq');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: "fp1",
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/legal_notices');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: 'fp2',
                // .tr().toString(),
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),

            // buildItem('fp2'.tr().toString()),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/privacy_policy');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: 'fp3',
                // .tr().toString(),
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/terms_of_use');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: "fp4",
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/cguv');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: HoverAction(
                text: "fp5",
                defaultColor: Color.fromRGBO(117, 117, 117, 1),
                hoverColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget buildItem(String txt) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 7),
  //     child: Text(
  //       txt,
  //       style: TextStyle(
  //         decoration: TextDecoration.none,
  //         fontWeight: FontWeight.w600,
  //         color: Color.fromRGBO(122, 122, 122, 1),
  //         fontSize: 18,
  //       ),
  //     ),
  //   );
  // }

  Widget buildContactSection(BuildContext context, double newWidth) {
    return Container(
      width: newWidth,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.mail,
                size: 53,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'contact'.tr().toString(),
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).primaryColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "contact@bet-trends.fr",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w300,
                      // color: Color.fromRGBO(122, 122, 122, 1),
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildSocialMediaIcons(
                "https://www.facebook.com/bet.trends.fb/",
                "images/icons/facebook.png",
              ),
              buildSocialMediaIcons(
                "https://twitter.com/bet_trends_app",
                "images/icons/twitter.png",
              ),
              buildSocialMediaIcons(
                "https://www.instagram.com/bet_trends_app/",
                "images/icons/instagram.png",
              ),
              buildSocialMediaIcons(
                "https://www.linkedin.com/company/68560201/",
                "images/icons/linkedin.png",
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildSocialMediaIcons(String link, String img) {
    return Container(
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          html.window.open(link, "Name");
        },
        child: Image.asset(img),
      ),
    );
  }
}
