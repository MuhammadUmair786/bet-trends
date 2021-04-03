import 'package:bet_trends/widgets/footer.dart';
import 'package:bet_trends/widgets/hoverAction.dart';
import 'package:bet_trends/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class CGUV extends StatelessWidget {
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
                        "cguv-main-heading-1".tr().toString(),
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 43,
                        ),
                      ),
                      Text(
                        "cguv-main-heading-2".tr().toString(),
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
                      buildNormalText("cguv-c".tr().toString() + "\n"),

                      //heading 1
                      buildHeadingText("cguv-h1".tr().toString() + "\n"),
                      templateRichText(
                        "cguv-h1-1-h".tr().toString(),
                        "cguv-h1-1-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-2-h".tr().toString(),
                        "cguv-h1-2-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-3-h".tr().toString(),
                        "cguv-h1-3-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-4-h".tr().toString(),
                        "cguv-h1-4-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-5-h".tr().toString(),
                        "cguv-h1-5-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-6-h".tr().toString(),
                        "cguv-h1-6-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-7-h".tr().toString(),
                        "cguv-h1-7-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-8-h".tr().toString(),
                        "cguv-h1-8-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-9-h".tr().toString(),
                        "cguv-h1-9-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-10-h".tr().toString(),
                        "cguv-h1-10-c".tr().toString(),
                      ),
                      templateRichText(
                        "cguv-h1-11-h".tr().toString(),
                        "cguv-h1-11-c".tr().toString(),
                      ),

                      //heading 2
                      buildHeadingText("cguv-h2".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c2".tr().toString() + "\n",
                      ),
                      //heading 3
                      buildHeadingText("cguv-h3".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c3".tr().toString() + "\n",
                      ),
                      //heading 4
                      buildHeadingText("cguv-h4".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c4".tr().toString() + "\n",
                      ),
                      //heading 5
                      buildHeadingText("cguv-h5".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c5-1".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-c5-2".tr().toString() + "\n",
                        ),
                      ),

                      //heading 6
                      buildHeadingText("cguv-h6".tr().toString() + "\n"),

                      buildHeadingText("cguv-h6-1-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h6-1-c".tr().toString() + "\n",
                      ),

                      buildHeadingText("cguv-h6-2-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h6-2-c".tr().toString() + "\n",
                      ),

                      buildHeadingText("cguv-h6-3-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h6-3-c".tr().toString() + "\n",
                      ),

                      buildHeadingText("cguv-h6-4-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h6-4-c1".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-h6-4-c2".tr().toString() + "\n",
                        ),
                      ),

                      buildHeadingText("cguv-h6-5-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h6-5-c".tr().toString() + "\n",
                      ),

                      buildHeadingText("cguv-h6-6-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h6-6-c1".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-h6-6-c2".tr().toString() + "\n",
                        ),
                      ),

                      buildHeadingText("cguv-h6-7-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h6-7-c1".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-h6-7-c2".tr().toString() + "\n",
                        ),
                      ),
                      buildNormalText(
                        "cguv-h6-7-c3".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-h6-7-c4".tr().toString() + "\n",
                        ),
                      ),
                      buildNormalText(
                        "cguv-h6-7-c5".tr().toString() + "\n",
                      ),

                      //heading 7

                      buildHeadingText("cguv-h7".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h7-1-c1".tr().toString() +
                            "\n\n" +
                            "cguv-h7-2-c1".tr().toString() +
                            "\n",
                      ),
                      //heading 8

                      buildHeadingText("cguv-h8".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h8-1-c1".tr().toString() +
                            "\n\n" +
                            "cguv-h8-1-c2".tr().toString() +
                            "\n",
                      ),

                      buildHeadingText("cguv-h8-2-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h8-2-c".tr().toString() + "\n",
                      ),

                      //heading 9
                      buildHeadingText("cguv-h9".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c9".tr().toString() + "\n",
                      ),

                      //heading 10
                      buildHeadingText("cguv-h10".tr().toString() + "\n"),
                      buildHeadingText("cguv-h10.1-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h10.1-c".tr().toString() + "\n",
                      ),
                      buildHeadingText("cguv-h10.2-h".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-h10.2-c".tr().toString() + "\n",
                      ),

                      //heading 11
                      buildHeadingText("cguv-h11".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c11".tr().toString() + "\n",
                      ),
                      //heading 12
                      buildHeadingText("cguv-h12".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c12".tr().toString() + "\n",
                      ),
                      //heading 13
                      buildHeadingText("cguv-h13".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c13".tr().toString() + "\n",
                      ),
                      //heading 14
                      buildHeadingText("cguv-h14".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c14".tr().toString() + "\n",
                      ),
                      //heading 15
                      buildHeadingText("cguv-h15".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c15".tr().toString() + "\n",
                      ),
                      //heading 16
                      buildHeadingText("cguv-h16".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c16".tr().toString() + "\n",
                      ),
                      //heading 17
                      buildHeadingText("cguv-h17".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c17".tr().toString() + "\n",
                      ),
                      //heading 18
                      buildHeadingText("cguv-h18".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c18".tr().toString() + "\n",
                      ),
                      //heading 19
                      buildHeadingText("cguv-h19".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c19".tr().toString() + "\n",
                      ),
                      //heading 20
                      buildHeadingText("cguv-h20".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c20-1".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-c20-2".tr().toString() + "\n",
                        ),
                      ),

                      //heading 21
                      buildHeadingText("cguv-h21".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c21".tr().toString() + "\n",
                      ),

                      //heading 22
                      buildHeadingText("cguv-h22".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c22-1".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-c22-2".tr().toString() + "\n",
                        ),
                      ),
                      buildNormalText(
                        "cguv-c22-3".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-c22-4".tr().toString() + "\n",
                        ),
                      ),
                      buildNormalText(
                        "cguv-c22-5".tr().toString() + "\n",
                      ),

                      //heading 23
                      buildHeadingText("cguv-h23".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c23-1".tr().toString() + "\n",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: buildNormalText(
                          "cguv-c23-2".tr().toString() + "\n",
                        ),
                      ),
                      buildNormalText(
                        "cguv-c23-3".tr().toString() + "\n",
                      ),

                      //heading 24
                      buildHeadingText("cguv-h24".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c24".tr().toString() + "\n",
                      ),
                      //heading 25
                      buildHeadingText("cguv-h25".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c25".tr().toString() + "\n",
                      ),
                      //heading 26
                      buildHeadingText("cguv-h26".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c26".tr().toString() + "\n",
                      ),
                      //heading 27
                      buildHeadingText("cguv-h27".tr().toString() + "\n"),
                      buildNormalText(
                        "cguv-c27".tr().toString() + "\n",
                      ),
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
