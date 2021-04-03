import 'package:bet_trends/widgets/footer.dart';
import 'package:bet_trends/widgets/hoverAction.dart';
import 'package:bet_trends/widgets/navbar.dart';
// import 'package:bet_trends/widgets/navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final homeKey = new GlobalKey();

  final featureKey = new GlobalKey();

  final priceKey = new GlobalKey();

  final userKey = new GlobalKey();

  bool indexFunction = true;

  bool isAppBarChange;
  bool restrictReChecking = true;

  // String dropdownValueLanguage = 'eng';
  ScrollController _controller;
  _scrollListener() {
    if (_controller.offset > 400 &&
        !_controller.position.outOfRange &&
        restrictReChecking) {
      setState(() {
        print("required area");
        isAppBarChange = true;
        restrictReChecking = false;
      });
    }
    if (_controller.offset < 400 && !_controller.position.outOfRange) {
      setState(() {
        print("top area");
        isAppBarChange = false;
        restrictReChecking = true;
      });
    }
  }

  @override
  void initState() {
    isAppBarChange = false;
    _controller = ScrollController(initialScrollOffset: 1.0);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // if (_controller.hasClients) {
      _controller.addListener(_scrollListener);
      // }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void goToIndex() {
      if (indexFunction) {
        try {
          final routeArg = ModalRoute.of(context).settings.arguments as Map;
          int index = routeArg['index'];
          if (index == 1) {
            Scrollable.ensureVisible(
              homeKey.currentContext,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          } else if (index == 2) {
            Scrollable.ensureVisible(
              featureKey.currentContext,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          } else if (index == 3) {
            Scrollable.ensureVisible(
              priceKey.currentContext,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          } else if (index == 4) {
            Scrollable.ensureVisible(
              userKey.currentContext,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          }
        } catch (err) {
          Scrollable.ensureVisible(
            homeKey.currentContext,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        }
        indexFunction = false;
        // print("index function run");
      }
    }

    double deviceWidth = MediaQuery.of(context).size.width;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      goToIndex();
    });
    //
    //
    //
    //
    print(isAppBarChange.toString());
    //
    //
    //
    //
    return Scaffold(
      appBar: deviceWidth > 850
          ? NavBar(
              change: isAppBarChange,
            )
          : AppBar(
              iconTheme: isAppBarChange
                  ? IconThemeData(color: Theme.of(context).primaryColor)
                  : IconThemeData(color: Colors.white),
              backgroundColor: isAppBarChange
                  ? Colors.white
                  : Theme.of(context).primaryColor,
              automaticallyImplyLeading: false,
              title: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pushNamed('/home');
                      Navigator.of(context)
                          .pushNamed('/home', arguments: {'index': 1});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "images/logo.png",
                        color: isAppBarChange
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        height: 50,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      endDrawer: deviceWidth > 850
          ? null
          : Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Scrollable.ensureVisible(
                        homeKey.currentContext,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      // Navigator.of(context)
                      //     .pushNamed('/home', arguments: {'index': 1});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Color.fromRGBO(122, 122, 122, 0.2),
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: HoverAction(
                        text: 'home',
                        // .tr().toString(),
                        defaultColor: Colors.black54,
                        hoverColor: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Scrollable.ensureVisible(
                        featureKey.currentContext,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      // Navigator.of(context)
                      //     .pushNamed('/home', arguments: {'index': 2});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(122, 122, 122, 0.2)),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: HoverAction(
                        text: 'features',
                        // .tr().toString(),
                        defaultColor: Colors.black54,
                        hoverColor: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Scrollable.ensureVisible(
                        priceKey.currentContext,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      // Navigator.of(context)
                      //     .pushNamed('/home', arguments: {'index': 3});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(122, 122, 122, 0.2)),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: HoverAction(
                        text: 'price',

                        // .tr().toString(),
                        defaultColor: Colors.black54,
                        hoverColor: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                      Scrollable.ensureVisible(
                        userKey.currentContext,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                      // Navigator.of(context)
                      //     .pushNamed('/home', arguments: {'index': 4});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(122, 122, 122, 0.2)),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: HoverAction(
                        text: 'users',
                        // .tr().toString(),
                        defaultColor: Colors.black54,
                        hoverColor: Colors.black,
                      ),
                    ),
                  ),
                  EasyLocalization.of(context).locale == Locale('en', 'GB')
                      ? GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            EasyLocalization.of(context)
                                .setLocale(Locale('fr'));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(122, 122, 122, 0.2)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                    "images/icons/france-flag-icon-32.png"),
                                SizedBox(width: 5),
                                HoverAction(
                                  text: 'fr',
                                  defaultColor: Colors.black54,
                                  hoverColor: Colors.black,
                                )
                              ],
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                            EasyLocalization.of(context)
                                .setLocale(Locale('en', 'GB'));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color.fromRGBO(122, 122, 122, 0.2)),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("images/icons/uk-flag-icon-32.png"),
                                SizedBox(width: 5),
                                HoverAction(
                                  text: 'eng',
                                  defaultColor: Colors.black54,
                                  hoverColor: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        )
                ],
              ),
            ),
      body: Stack(
        children: [
          Container(
            // margin: deviceWidth > 850 ? EdgeInsets.only(top: 70) : null,
            child: Scrollbar(
              controller: _controller,
              isAlwaysShown: true,
              showTrackOnHover: true,
              child: SingleChildScrollView(
                controller: _controller,
                // clipBehavior : Clip.,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          color: Theme.of(context).primaryColor,
                          width: double.infinity,
                          height: 650,
                          child: Image.asset("images/hero-svg-shape-3.png"),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 60,
                          ),
                          width: double.infinity,
                          key: homeKey,
                          child: Widget1(),
                        )
                      ],
                    ),
                    SizedBox(height: 25),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      child: buildTextItem(
                          'hW2-1'.tr().toString(),
                          FontWeight.w600,
                          Color.fromRGBO(149, 149, 149, 1),
                          36),
                    ),
                    Widget2(),
                    SizedBox(height: 25),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      color: Color.fromRGBO(45, 221, 186, 1),
                      width: double.infinity,
                      child: Widget3(),
                    ),

                    SizedBox(height: 50),
                    Text(
                      'hW4-1h'.tr().toString(),
                      key: featureKey,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                        fontSize: 37,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'hW4-1c'.tr().toString(),
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Color.fromRGBO(117, 117, 117, 1),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      width: double.infinity,
                      child: Widget4(),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      width: double.infinity,
                      color: Color.fromRGBO(246, 248, 249, 1),
                      child: Column(
                        children: [
                          Text(
                            'hW5-1h'.tr().toString(),
                            key: priceKey,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'hW5-1c1'.tr().toString() +
                                "\n" +
                                'hW5-1c2'.tr().toString(),
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(117, 117, 117, 1),
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 50),
                          Widget5(),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceWidth / 18, vertical: 30),
                      width: double.infinity,
                      // height: 300,
                      child: UserInfoSlider(),
                      color: Colors.white,
                      key: userKey,
                    ),
                    // SizedBox(height: 20),
                    Footer(),
                  ],
                ),
              ),
            ),
          ),
          // if (deviceWidth > 850)
          //   Container(
          //     color: Theme.of(context).primaryColor,
          //     padding: EdgeInsets.symmetric(vertical: 10),
          //     height: 70,
          //     width: double.infinity,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         GestureDetector(
          //           onTap: () {
          //             // Navigator.of(context).pushNamed('/home');
          //             // Navigator.of(context)
          //             //     .pushNamed('/home', arguments: {'index': 1});
          //           },
          //           child: Image.asset(
          //             "images/logo.png",
          //             height: 50,
          //             width: 200,
          //             color: Colors.white,
          //           ),
          //         ),
          //         SizedBox(
          //           width: 50,
          //         ),
          //         GestureDetector(
          //           onTap: () {
          //             // Navigator.of(context)
          //             //     .pushNamed('/home', arguments: {'index': 1});
          //             Scrollable.ensureVisible(
          //               homeKey.currentContext,
          //               duration: Duration(milliseconds: 300),
          //               curve: Curves.easeIn,
          //             );
          //           },
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(
          //               horizontal: 10,
          //               vertical: 5,
          //             ),
          //             child: HoverAction(
          //               text: 'home',
          //               // .tr().toString(),
          //               hoverColor: Color.fromRGBO(117, 117, 117, 1),
          //               defaultColor: Colors.white,
          //             ),
          //           ),
          //         ),
          //         GestureDetector(
          //           onTap: () {
          //             // Navigator.of(context)
          //             //     .pushNamed('/home', arguments: {'index': 2});
          //             Scrollable.ensureVisible(
          //               featureKey.currentContext,
          //               duration: Duration(milliseconds: 300),
          //               curve: Curves.easeIn,
          //             );
          //           },
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(
          //               horizontal: 10,
          //               vertical: 5,
          //             ),
          //             child: HoverAction(
          //               text: 'features',
          //               // .tr().toString(),
          //               hoverColor: Color.fromRGBO(117, 117, 117, 1),
          //               defaultColor: Colors.white,
          //             ),
          //           ),
          //         ),
          //         GestureDetector(
          //           onTap: () {
          //             // Navigator.of(context)
          //             //     .pushNamed('/home', arguments: {'index': 3});
          //             Scrollable.ensureVisible(
          //               priceKey.currentContext,
          //               duration: Duration(milliseconds: 300),
          //               curve: Curves.easeIn,
          //             );
          //           },
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(
          //               horizontal: 10,
          //               vertical: 5,
          //             ),
          //             child: HoverAction(
          //               text: 'price',
          //               // .tr().toString(),
          //               hoverColor: Color.fromRGBO(117, 117, 117, 1),
          //               defaultColor: Colors.white,
          //             ),
          //           ),
          //         ),
          //         GestureDetector(
          //           onTap: () {
          //             Scrollable.ensureVisible(
          //               userKey.currentContext,
          //               duration: Duration(milliseconds: 300),
          //               curve: Curves.easeIn,
          //             );
          //             // Navigator.of(context)
          //             //     .pushNamed('/home', arguments: {'index': 4});
          //           },
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(
          //               horizontal: 10,
          //               vertical: 5,
          //             ),
          //             child: HoverAction(
          //               text: 'users',
          //               // .tr().toString(),
          //               hoverColor: Color.fromRGBO(117, 117, 117, 1),
          //               defaultColor: Colors.white,
          //             ),
          //             // buildItem('users'.tr().toString()),
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.symmetric(
          //             horizontal: 10,
          //             vertical: 5,
          //           ),
          //           child: buildDropdownButtonLanguage(context),
          //         ),
          //       ],
          //     ),
          //   ),
        ],
      ),
    );
  }

  DropdownButton<String> buildDropdownButtonLanguage(BuildContext context) {
    return DropdownButton<String>(
      value: EasyLocalization.of(context).currentLocale == Locale('en', 'GB')
          ? "eng"
          : "fr",
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      iconSize: 22,
      elevation: 8,
      focusColor: Theme.of(context).primaryColor,
      underline: Container(
        height: 0,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          // if (newValue == "eng".tr().toString()) {
          if (newValue == "eng") {
            EasyLocalization.of(context).setLocale(Locale('en', 'GB'));
          } else {
            EasyLocalization.of(context).setLocale(Locale('fr'));
          }
        });
      },
      // items: <String>["eng".tr().toString(), "fr".tr().toString()]
      items:
          <String>["eng", "fr"].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // value == "eng".tr().toString()
              value == "eng"
                  ? Image.asset("images/icons/uk-flag-icon-32.png")
                  : Image.asset("images/icons/france-flag-icon-32.png"),
              SizedBox(width: 5),
              // buildItem(value),
              HoverAction(
                text: value,
                // text: " " + value,
                hoverColor: Colors.red[400],
                defaultColor: Colors.white,
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  // Widget buildItem(String txt) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 10),
  //     child: Text(
  //       txt,
  //       style: TextStyle(
  //         decoration: TextDecoration.none,
  //         fontWeight: FontWeight.w500,
  //         fontSize: 18,
  //       ),
  //     ),
  //   );
  // }
}

Widget buildTextItem(String txt, FontWeight fw, Color col, double fs) {
  return Text(
    txt,
    textAlign: TextAlign.justify,
    style: TextStyle(
      decoration: TextDecoration.none,
      fontWeight: fw,
      color: col,
      fontSize: fs,
      height: 1.5,
    ),
  );
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    if (deviceWidth > 900) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 3,
            child: leftSide(),
          ),
          Flexible(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Image.asset(
                "images/smartphones_verticle.png",
                height: 620,
                // deviceWidth / 2,
              ),
            ),
          )
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          leftSide(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Image.asset(
              "images/smartphones_verticle.png",
              height: deviceWidth / 1.5,
            ),
          )
        ],
      );
    }
  }

  Widget leftSide() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "\n" + 'hW1-1'.tr().toString(),
            // textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 45,
              height: 1.5,
            ),
          ),
        ),

        // buildTextItem(
        //     'hW1-1'.tr().toString(), FontWeight.w900, Colors.white, 40),
        SizedBox(height: 15),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'hW1-2'.tr().toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 20,
              height: 1.5,
            ),
          ),
        ),
        // buildTextItem(
        //     'hW1-2'.tr().toString(), FontWeight.w500, Colors.white, 25),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(10),
          child: TextButton(
            onPressed: () {
              html.window.open(
                  "https://play.google.com/store/apps/details?id=com.bettrends.app",
                  "Name");
            },
            child: Image.asset("images/googlePlay.png"),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Version bêta",
          style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 25),
        ),
      ],
    );
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemList = [
      bildCardItem(context, "images/logos/automatisation.svg",
          'hW2-2h'.tr().toString(), 'hW2-2c'.tr().toString()),
      bildCardItem(context, "images/logos/statistiques.svg",
          'hW2-3h'.tr().toString(), 'hW2-3c'.tr().toString()),
      bildCardItem(context, "images/logos/analyse.svg",
          'hW2-4h'.tr().toString(), 'hW2-4c'.tr().toString()),
    ];
    double deviceWidth = MediaQuery.of(context).size.width;
    if (deviceWidth > 1020) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          itemList[0],
          itemList[1],
          itemList[2],
        ],
      );
    } else if (deviceWidth > 680 && deviceWidth <= 1020) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              itemList[0],
              itemList[1],
            ],
          ),
          itemList[2],
        ],
      );
    } else {
      return Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          itemList[0],
          itemList[1],
          itemList[2],
        ],
      );
    }
  }

  Widget bildCardItem(
      BuildContext context, String img, String heading, String content) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 85,
            width: 100,
            child: SvgPicture.asset(
              img,
            ),
          ),
          SizedBox(height: 10),
          buildTextItem(
            heading,
            FontWeight.w500,
            Theme.of(context).primaryColor,
            25,
          ),
          SizedBox(height: 10),
          buildTextItem(
            content,
            FontWeight.w400,
            Color.fromRGBO(122, 122, 122, 1),
            16,
          ),
        ],
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    if (deviceWidth > 950) {
      double newDefinedWith = (deviceWidth / 2) - 50;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildLeftContent(newDefinedWith),
          buildRightContent(newDefinedWith),
        ],
      );
    } else {
      // double newDefinedWith = (deviceWidth / 2) - 50;
      return Column(
        children: [
          buildLeftContent(deviceWidth / 1.2),
          SizedBox(height: 20),
          buildRightContent(deviceWidth / 1.2),
        ],
      );
    }
  }

  Widget buildLeftContent(double newWidth) {
    return Container(
      width: newWidth,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTextItem(
              'hW3-1'.tr().toString(), FontWeight.w700, Colors.white, 45),
          SizedBox(height: 15),
          buildTextItem(
              'hW3-2h'.tr().toString(), FontWeight.w700, Colors.white, 25),
          SizedBox(height: 15),
          buildTextItem(
              'hW3-2c'.tr().toString(), FontWeight.w500, Colors.white, 18),
          SizedBox(height: 15),
          buildTextItem(
              'hW3-3h'.tr().toString(), FontWeight.w700, Colors.white, 25),
          SizedBox(height: 15),
          buildTextItem(
              'hW3-3c'.tr().toString(), FontWeight.w500, Colors.white, 18),
          SizedBox(height: 15),
          buildTextItem(
              'hW3-4h'.tr().toString(), FontWeight.w700, Colors.white, 25),
          SizedBox(height: 15),
          buildTextItem(
              'hW3-4c'.tr().toString(), FontWeight.w500, Colors.white, 18),
        ],
      ),
    );
  }

  Widget buildRightContent(double newWidth) {
    return Container(
      width: newWidth,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InfoSlider(newWidth),
          SizedBox(height: 20),
          Image.asset(
            "images/smartphone_horizontal.png",
          ),
          // SizedBox(
          //   height: 15,
          // )
        ],
      ),
    );
  }
}

class InfoSlider extends StatelessWidget {
  final headingArray = [
    "h-info-slider-h1".tr().toString(),
    "h-info-slider-h2".tr().toString(),
    "h-info-slider-h3".tr().toString(),
    "h-info-slider-h4".tr().toString(),
    "h-info-slider-h5".tr().toString(),
  ];
  final detailArray = [
    "h-info-slider-c1".tr().toString(),
    "h-info-slider-c2".tr().toString(),
    "h-info-slider-c3".tr().toString(),
    "h-info-slider-c4".tr().toString(),
    "h-info-slider-c5".tr().toString(),
  ];
  final double updatedWith;
  InfoSlider(this.updatedWith);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    PageController _controller =
        PageController(viewportFraction: 1, keepPage: true);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 10,
            blurRadius: 15,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              RawMaterialButton(
                onPressed: () {
                  _controller.previousPage(
                      duration: Duration(seconds: 2), curve: Curves.easeIn);
                },
                elevation: 2.0,
                fillColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.arrow_left,
                  size: 35.0,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),
              RawMaterialButton(
                onPressed: () {
                  _controller.nextPage(
                      duration: Duration(seconds: 2), curve: Curves.easeIn);
                },
                elevation: 2.0,
                fillColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.arrow_right,
                  size: 35.0,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              ),
            ],
          ),
          SizedBox(
            width: updatedWith,
            height: deviceWidth > 445 ? 200 : 300,
            child: PageView.builder(
              // reverse: true,
              itemCount: headingArray.length,
              controller: _controller,
              itemBuilder: (BuildContext context, int itemIndex) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // width: double.infinity,
                      decoration: BoxDecoration(
                          // border: Border(
                          //   bottom: BorderSide(color: Colors.lightBlue.shade900),
                          // ),
                          ),
                      child: buildTextItem(headingArray[itemIndex],
                          FontWeight.w700, Theme.of(context).primaryColor, 25),
                    ),
                    buildTextItem("\n" + detailArray[itemIndex],
                        FontWeight.w400, Color.fromRGBO(122, 122, 122, 1), 18),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Widget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    var cardList = [
      buildCard(
        context,
        "images/logos/automatisation.svg",
        'hW4-2h'.tr().toString(),
        'hW4-2c1'.tr().toString(),
        'hW4-2c2'.tr().toString(),
      ),
      buildCard(
        context,
        "images/logos/60_and_more.svg",
        'hW4-3h'.tr().toString(),
        'hW4-3c1'.tr().toString(),
        'hW4-3c2'.tr().toString(),
      ),
      buildCard(
        context,
        "images/logos/custom_2.svg",
        'hW4-4h'.tr().toString(),
        'hW4-4c1'.tr().toString(),
        'hW4-4c2'.tr().toString(),
      ),
      buildCard(
        context,
        "images/logos/classification.svg",
        'hW4-5h'.tr().toString(),
        'hW4-5c1'.tr().toString(),
        'hW4-5c2'.tr().toString(),
      ),
      buildCard(
        context,
        "images/logos/calendar.svg",
        'hW4-6h'.tr().toString(),
        'hW4-6c1'.tr().toString(),
        'hW4-6c2'.tr().toString(),
      ),
      buildCard(
        context,
        "images/logos/search_logo.svg",
        'hW4-7h'.tr().toString(),
        'hW4-7c1'.tr().toString(),
        'hW4-7c2'.tr().toString(),
      ),
    ];
    if (deviceWidth > 1110) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cardList[0],
              cardList[1],
              cardList[2],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cardList[3],
              cardList[4],
              cardList[5],
            ],
          ),
        ],
      );
    } else if (deviceWidth > 760 && deviceWidth <= 1110) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cardList[0],
              cardList[1],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cardList[2],
              cardList[3],
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              cardList[4],
              cardList[5],
            ],
          ),
        ],
      );
    } else {
      return Column(
        children: [
          cardList[0],
          cardList[1],
          cardList[2],
          cardList[3],
          cardList[4],
          cardList[5],
        ],
      );
    }
  }

  Widget buildCard(
      BuildContext context, String img, String h1, String h2, String content) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: 340,
      height: 180,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(
                  img,
                ),
              ),
              SizedBox(width: 15),
              Text(
                h1,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(117, 117, 117, 1),
                  fontSize: 17,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: h2,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(text: " " + content),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Widget5 extends StatefulWidget {
  @override
  _Widget5State createState() => _Widget5State();
}

class _Widget5State extends State<Widget5> {
  bool btnPressed = true;
  String updatedText = 'paid-text-1'.tr().toString();
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    if (deviceWidth > 950) {
      return Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: buttonRow(context),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildFreeColumn(400),
                buildPaidColumn(400),
              ],
            ),
          )
        ],
      );
    } else {
      return Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: buttonRow(context),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildFreeColumn(400),
                SizedBox(height: 15),
                buildPaidColumn(400),
                // buildPaidColumn(),
              ],
            ),
          )
        ],
      );
    }
  }

  Container buttonRow(BuildContext context) {
    return Container(
      width: 380,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: btnPressed
                        ? ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(34, 191, 160, 1), //green
                            ),
                          )
                        : ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(239, 239, 239, 1),
                            ),
                          ),
                    onPressed: () {
                      setState(() {
                        btnPressed = !btnPressed;
                        updatedText = 'paid-text-1'.tr().toString();
                      });
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text(
                        'month-btn'.tr().toString().toUpperCase(),
                        style: btnPressed
                            ? TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18,
                              )
                            : TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 18,
                              ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: btnPressed
                        ? ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(239, 239, 239, 1),
                            ),
                          )
                        : ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(34, 191, 160, 1), //green
                            ),
                          ),
                    onPressed: () {
                      setState(() {
                        btnPressed = !btnPressed;
                        updatedText = 'paid-text-2'.tr().toString();
                      });
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text(
                        "quater-btn".tr().toString().toUpperCase(),
                        style: btnPressed
                            ? TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 18,
                              )
                            : TextStyle(
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).primaryColor,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 3.5, horizontal: 11),
                  child: Text(
                    "-20 %",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFreeColumn(double newWidth) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: newWidth,
      // height: 600,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // color: Color.fromRGBO(117, 117, 117, 0.3),
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 15),
            child: SizedBox(
              height: 70,
              width: 70,
              child: SvgPicture.asset(
                "images/logos/diamond_premium_rounded.svg",
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Text(
            "free".tr().toString(),
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
              fontSize: 27,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 0.5,
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: Column(
              children: [
                buildFreeTextBullets(
                  "free1".tr().toString(),
                ),
                buildFreeTextBullets(
                  "free2".tr().toString(),
                ),
                buildFreeTextBullets(
                  "free3".tr().toString(),
                ),
                buildFreeTextBullets(
                  "free4".tr().toString(),
                ),
                buildFreeTextBullets(
                  "free5".tr().toString(),
                ),
                buildFreeTextBullets(
                  "free6".tr().toString(),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildFreeTextBullets(String txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          txt,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: 17,
          ),
        ),
      ),
    );
  }

  Widget buildPaidColumn(double newWidth) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
      width: newWidth,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromRGBO(78, 204, 179, 1),
              shape: BoxShape.circle,
            ),
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 19),
            child: SizedBox(
              height: 70,
              width: 70,
              child: SvgPicture.asset(
                "images/logos/gift.svg",
                color: Color.fromRGBO(243, 251, 253, 0.98),
              ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.all(30),
          //   child: SvgPicture.asset(
          //     "images/logos/gift.svg",
          //     height: 100,
          //     width: 100,
          //     color: Colors.white,
          //   ),
          // ),
          Text(
            updatedText,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              fontSize: 27,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 0.5,
            color: Colors.grey[800],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: Column(
              children: [
                buildPaidBullets(
                    "free1".tr().toString(), 5, FontWeight.w400, 17),
                buildPaidBullets(
                    "free2".tr().toString(), 5, FontWeight.w400, 17),
                buildPaidBullets(
                    "free3".tr().toString(), 5, FontWeight.w400, 17),
                buildPaidBullets(
                    "free4".tr().toString(), 5, FontWeight.w400, 17),
                buildPaidBullets(
                    "free5".tr().toString(), 5, FontWeight.w400, 17),
                buildPaidBullets(
                    "free6".tr().toString(), 5, FontWeight.w400, 17),
                buildPaidBullets(
                    "paid-1".tr().toString(), 8, FontWeight.w600, 20),
                buildPaidBullets(
                    "paid-2".tr().toString(), 8, FontWeight.w600, 20),
                buildPaidBullets(
                    "paid-3".tr().toString(), 8, FontWeight.w600, 20),
                buildPaidBullets(
                    "paid-4".tr().toString(), 8, FontWeight.w600, 20),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildPaidBullets(String txt, double padd, FontWeight fw, double fs) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: padd,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          txt,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: fw,
            color: Colors.white,
            fontSize: fs,
          ),
        ),
      ),
    );
  }
}

final List<Widget> _itemsArray = [
  buildUserInfoItem("user-slider-Ismail".tr().toString(), "images/ismael.jpeg",
      "Ismael", "UX/UI designer"),
  buildUserInfoItem("user-slider-ines".tr().toString(), "images/ines.jpeg",
      "Ines", "Commerciale"),
  buildUserInfoItem("user-slider-alex".tr().toString(), "images/alex.jpeg",
      "Alex", "Entrepreneur")
].toList();

Widget buildUserInfoItem(
    String content, String img, String name, String designation) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(122, 122, 122, 1),
            fontSize: 20,
            height: 1.5,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              img,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(34, 191, 160, 1),
                  fontSize: 20,
                ),
              ),
              Text(
                designation,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(122, 122, 122, 1),
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      )
    ],
  );
}

class UserInfoSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UserInfoSlider();
  }
}

class _UserInfoSlider extends State<UserInfoSlider> {
  final CarouselController _controller = CarouselController();
  int currentPage = 0;

  Widget build(BuildContext context) {
    // int indexForColor = 0;
    return Column(
      children: <Widget>[
        buildTextItem(
          "user-slider-heading".tr().toString(),
          FontWeight.w600,
          Theme.of(context).primaryColor,
          30,
        ),
        SizedBox(height: 15),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Image.asset(
              "images/icons/quotation_mark.png",
              width: 60,
              height: 60,
            ),
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _controller.previousPage();
              },
              child: Icon(
                Icons.chevron_left_sharp,
                size: 35.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Expanded(
              child: CarouselSlider(
                items: _itemsArray,
                options: CarouselOptions(
                  onPageChanged: (pg, reason) {
                    setState(() {
                      currentPage = pg;
                    });
                  },
                  enlargeCenterPage: true,
                  // enlargeStrategy : CenterPageEnlargeStrategy.height,
                  height: 200,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration: const Duration(milliseconds: 500),
                ),
                carouselController: _controller,
              ),
            ),
            GestureDetector(
              onTap: () {
                _controller.nextPage();
              },
              child: Icon(
                Icons.chevron_right_sharp,
                size: 35.0,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ...Iterable<int>.generate(_itemsArray.length).map(
              (int pageIndex) => GestureDetector(
                onTap: () {
                  _controller.animateToPage(pageIndex);
                  // _controller.
                },
                child: Container(
                  width: 7,
                  height: 7,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: new BoxDecoration(
                    color: pageIndex == currentPage
                        ? Theme.of(context).primaryColor
                        : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buildUserInfoItem(
      String content, String img, String name, String designation) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTextItem(
          content,
          FontWeight.w500,
          Color.fromRGBO(122, 122, 122, 1),
          20,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  img,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(34, 191, 160, 1),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    designation,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(122, 122, 122, 1),
                      fontSize: 17,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
