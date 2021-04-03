import 'package:bet_trends/widgets/footer.dart';
import 'package:bet_trends/widgets/hoverAction.dart';
import 'package:bet_trends/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TermsOfUse extends StatelessWidget {
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
                  padding: EdgeInsets.symmetric(vertical: 100),
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      Text(
                        "tou-main-heading-1".tr().toString(),
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 43,
                        ),
                      ),
                      Text(
                        "tou-main-heading-2".tr().toString(),
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 43,
                        ),
                      ),
                    ],
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
                      //heading 1
                      buildHeadingText("tou-h1".tr().toString() + "\n"),
                      templateRichText(
                        "tou-h1-1-h".tr().toString(),
                        "tou-h1-1-c".tr().toString(),
                      ),
                      templateRichText(
                        "tou-h1-2-h".tr().toString(),
                        "tou-h1-2-c".tr().toString(),
                      ),
                      templateRichText(
                        "tou-h1-3-h".tr().toString(),
                        "tou-h1-3-c".tr().toString(),
                      ),
                      templateRichText(
                        "tou-h1-4-h".tr().toString(),
                        "tou-h1-4-c".tr().toString() + "\n",
                      ),
                      //heading 2
                      buildHeadingText("tou-h2".tr().toString() + "\n"),
                      buildNormalText("tou-c2".tr().toString() + "\n"),

                      //heading 3
                      buildHeadingText("tou-h3".tr().toString() + "\n"),
                      buildNormalText("tou-c3".tr().toString() + "\n"),

                      //heading 4
                      buildHeadingText("tou-h4".tr().toString() + "\n"),
                      buildHeadingText("tou-h4.1".tr().toString() + "\n"),
                      buildNormalText("tou-c4.1".tr().toString() + "\n"),
                      buildHeadingText("tou-h4.2".tr().toString() + "\n"),
                      buildNormalText("tou-c4.2".tr().toString() + "\n"),

                      //heading 5
                      buildHeadingText("tou-h5".tr().toString() + "\n"),
                      buildNormalText("tou-c5".tr().toString()),
                      GestureDetector(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                            fontSize: 17,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed('/privacy_policy');
                        },
                      ),
                      //heading 6
                      buildHeadingText("\n" + "tou-h6".tr().toString() + "\n"),
                      buildNormalText("tou-c6".tr().toString()),
                      GestureDetector(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                            fontSize: 17,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed('/privacy_policy');
                        },
                      ),
                      //heading 7
                      buildHeadingText("\n" + "tou-h7".tr().toString() + "\n"),
                      buildNormalText("tou-c7".tr().toString() + "\n"),
                      //heading 8
                      buildHeadingText("tou-h8".tr().toString() + "\n"),
                      buildNormalText("tou-c8".tr().toString() + "\n"),
                      //heading 9
                      buildHeadingText("tou-h9".tr().toString() + "\n"),
                      buildNormalText("tou-c9".tr().toString()),
                      GestureDetector(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                            fontSize: 17,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context).pushNamed('/privacy_policy');
                        },
                      ),
                      //heading 10
                      buildHeadingText("\n" + "tou-h10".tr().toString() + "\n"),
                      buildNormalText("tou-c10".tr().toString() + "\n"),
                      //heading 11
                      buildHeadingText("tou-h11".tr().toString() + "\n"),
                      buildNormalText("tou-c11".tr().toString() + "\n"),
                      //heading 12
                      buildHeadingText("tou-h12".tr().toString() + "\n"),
                      buildNormalText("tou-c12".tr().toString() + "\n"),
                      //heading 13
                      buildHeadingText("tou-h13".tr().toString() + "\n"),
                      buildNormalText("tou-c13-1".tr().toString() + "\n"),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child:
                            buildNormalText("tou-c13-2".tr().toString() + "\n"),
                      ),
                      //heading 14
                      buildHeadingText("tou-h14".tr().toString() + "\n"),
                      buildNormalText("tou-c14".tr().toString() + "\n"),
                      //heading 15
                      buildHeadingText("tou-h15".tr().toString() + "\n"),
                      buildNormalText("tou-c15".tr().toString() + "\n"),
                      //heading 16
                      buildHeadingText("tou-h16".tr().toString() + "\n"),
                      buildNormalText("tou-c16".tr().toString() + "\n"),
                      //heading 17
                      buildHeadingText("tou-h17".tr().toString() + "\n"),
                      buildNormalText("tou-c17".tr().toString() + "\n"),
                      //heading 18
                      buildHeadingText("tou-h18".tr().toString() + "\n"),
                      buildNormalText("tou-c18".tr().toString() + "\n"),
                    ],
                  ),
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
