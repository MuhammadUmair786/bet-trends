import 'package:bet_trends/widgets/footer.dart';
import 'package:bet_trends/widgets/hoverAction.dart';
import 'package:bet_trends/widgets/navbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:easy_localization/easy_localization.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: deviceWidth > 850
          ? NavBar(change: false)
          : AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              // backgroundColor: Colors.white,
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
                        color: Colors.white,
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
                      Navigator.of(context)
                          .pushNamed('/home', arguments: {'index': 1});
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
                      Navigator.of(context)
                          .pushNamed('/home', arguments: {'index': 2});
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
                      Navigator.of(context)
                          .pushNamed('/home', arguments: {'index': 3});
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
                      Navigator.of(context)
                          .pushNamed('/home', arguments: {'index': 4});
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
      body: Scrollbar(
        isAlwaysShown: true,
        showTrackOnHover: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 35),
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      "fp3".tr().toString(),
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 43,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: (deviceWidth / 5),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildNormalText(
                          "pp-top1".tr().toString() +
                              "pp-top2-3".tr().toString() +
                              "pp-top4-5".tr().toString(),
                        ),
                        buildHeadingText("pp-h1".tr().toString()),
                        templateRichText(
                          "pp-h1-1h".tr().toString(),
                          "pp-h1-1c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-2h".tr().toString(),
                          "pp-h1-2c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-3h".tr().toString(),
                          "pp-h1-3c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-4h".tr().toString(),
                          "pp-h1-4c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-5h".tr().toString(),
                          "pp-h1-5c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-6h".tr().toString(),
                          "pp-h1-6c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-7h".tr().toString(),
                          "pp-h1-7c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-8h".tr().toString(),
                          "pp-h1-8c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-9h".tr().toString(),
                          "pp-h1-9c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-10h".tr().toString(),
                          "pp-h1-10c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h1-11h".tr().toString(),
                          "pp-h1-11c".tr().toString(),
                        ),
                        //heading 2
                        buildHeadingText("pp-h2".tr().toString()),
                        buildNormalText("pp-h2-1c".tr().toString() +
                            "pp-h2-2c".tr().toString() +
                            "\n"),
                        //heading 3
                        buildHeadingText("pp-h3".tr().toString()),
                        buildNormalText("pp-h3-1c".tr().toString() +
                            "\n\n" +
                            "pp-h3-2c".tr().toString() +
                            "\n\n" +
                            "pp-h3-3c".tr().toString() +
                            "\n"),
                        //heading 4
                        buildHeadingText("pp-h4".tr().toString()),
                        buildNormalText("pp-h4-1c".tr().toString() + "\n"),
                        //heading 5
                        buildHeadingText("pp-h5".tr().toString()),
                        buildNormalText("pp-h5-1c-3points".tr().toString() +
                            "pp-h5-1c-4points".tr().toString() +
                            "\n\n" +
                            "pp-h5-2c".tr().toString() +
                            "\n\n" +
                            "pp-h5-3c".tr().toString() +
                            "\n\n" +
                            "pp-h5-4c".tr().toString() +
                            "\n\n" +
                            "pp-h5-5c".tr().toString() +
                            "\n\n" +
                            "pp-h5-6c".tr().toString() +
                            "\n"),
                        //heading 6
                        buildHeadingText("pp-h6".tr().toString()),
                        buildNormalText("pp-h6-1c".tr().toString() +
                            "\n\n" +
                            "pp-h6-2c".tr().toString() +
                            "\n\n" +
                            "pp-h6-3c".tr().toString() +
                            "\n"),
                        //heading 7
                        buildHeadingText("pp-h7".tr().toString()),
                        buildNormalText("pp-h7-1c".tr().toString() +
                            "\n\n" +
                            "pp-h7-2c".tr().toString() +
                            "\n\n" +
                            "pp-h7-3c".tr().toString() +
                            "\n"),
                        //heading 8
                        buildHeadingText("pp-h8".tr().toString()),
                        buildNormalText("pp-h8-1c".tr().toString() + "\n\n"),
                        //heading 9
                        buildHeadingText("pp-h9".tr().toString()),
                        buildNormalText("pp-h9-1c".tr().toString() +
                            "\n\n" +
                            "pp-h9-2c".tr().toString() +
                            "\n\n" +
                            "pp-h9-3c".tr().toString() +
                            "\n"),
                        //heading 10
                        buildHeadingText("pp-h10".tr().toString()),
                        buildNormalText("pp-h10-c".tr().toString() + "\n"),
                        buildHeadingText("pp-h10-1h".tr().toString()),
                        templateRichText(
                          "pp-h10-1-1h-h".tr().toString(),
                          "pp-h10-1-1h-c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h10-1-2h-h".tr().toString(),
                          "pp-h10-1-2h-c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h10-1-3h-h".tr().toString(),
                          "pp-h10-1-3h-c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h10-1-4h-h".tr().toString(),
                          "pp-h10-1-4h-c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h10-1-5h-h".tr().toString(),
                          "pp-h10-1-5h-c".tr().toString(),
                        ),
                        templateRichText(
                          "pp-h10-1-6h-h".tr().toString(),
                          "pp-h10-1-6h-c".tr().toString(),
                        ),
                        buildHeadingText("pp-h10-2h".tr().toString()),
                        buildNormalText("pp-h10-2c".tr().toString() + "\n"),

                        buildHeadingText("pp-h10-3h".tr().toString()),
                        buildNormalText("pp-h10-3c-1".tr().toString() + "\n"),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: buildNormalText(
                              "pp-h10-3c-2".tr().toString() + "\n"),
                        ),
                        buildNormalText("pp-h10-3c-3".tr().toString() + "\n"),

                        buildHeadingText("pp-h10-4h".tr().toString()),
                        buildNormalText("pp-h10-4c".tr().toString() + "\n"),

                        buildHeadingText("pp-h10-5h".tr().toString()),
                        buildNormalText("pp-h10-5c".tr().toString() + "\n"),

                        Table(
                            columnWidths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(5),
                            },
                            border: TableBorder.all(
                                color: Color.fromRGBO(148, 147, 148,
                                    1)), // Allows to add a border decoration around your table
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: buildNormalText("Cookies"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: buildNormalText(
                                      "pp-h10-table-c2r1".tr().toString()),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: buildNormalText("_ga"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: buildNormalText(
                                      "pp-h10-table-c2r2".tr().toString()),
                                ),
                              ]),
                            ]),
                        buildHeadingText("pp-h10-6h".tr().toString()),
                        buildNormalText("pp-h10-6c".tr().toString() + "\n"),

                        buildHeadingText("pp-h10-7h".tr().toString()),
                        buildNormalText("pp-h10-7c".tr().toString() + "\n"),

                        //heading 11
                        buildHeadingText("pp-h11".tr().toString()),
                        buildNormalText("pp-h11-1c".tr().toString() +
                            "\n" +
                            "pp-h11-2c".tr().toString() +
                            "\n" +
                            "pp-h11-3c".tr().toString() +
                            "\n\n"),

                        //heading 12
                        buildHeadingText("pp-h12".tr().toString()),
                        buildNormalText("pp-h12-1c".tr().toString() +
                            "\n" +
                            "pp-h12-2c".tr().toString() +
                            "\n\n"),

                        //heading 13
                        buildHeadingText("pp-h13".tr().toString()),
                        buildNormalText("pp-h11-1c".tr().toString() +
                            "\n\n" +
                            "pp-h13-2c".tr().toString() +
                            "\n\n" +
                            "pp-h13-3c".tr().toString() +
                            "\n\n" +
                            "pp-h13-4c".tr().toString() +
                            "\n\n"),

                        //heading 14
                        buildHeadingText("pp-h14".tr().toString()),

                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "pp-h14-1c".tr().toString() +
                                    "\n\n" +
                                    "pp-h14-2c".tr().toString(),
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(148, 147, 148, 1),
                                  fontSize: 17,
                                ),
                              ),
                              TextSpan(
                                text: " www.cnil.fr",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    html.window
                                        .open("https://www.cnil.fr/", "Name");
                                  },
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
                Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //this is for Side Drawer
  Widget buildItem(String txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        txt,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget buildNormalText(String txt) {
    return Text(
      txt,
      textAlign: TextAlign.justify,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(117, 117, 117, 1),
        fontSize: 17,
        height: 1.5,
      ),
    );
  }

  Widget buildHeadingText(String txt) {
    return Text(
      txt,
      textAlign: TextAlign.justify,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(84, 86, 90, 1),
        fontSize: 18,
        height: 1.5,
      ),
    );
  }

  Widget templateRichText(String heading, String content) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(fontFamily: "Montserrat"),
        children: <TextSpan>[
          TextSpan(
            text: heading,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(84, 86, 90, 1),
              fontSize: 18,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: " - " + content + "\n",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(117, 117, 117, 1),
              fontSize: 17,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
