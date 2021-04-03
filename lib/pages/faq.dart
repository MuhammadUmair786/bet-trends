import 'package:bet_trends/widgets/footer.dart';
import 'package:bet_trends/widgets/hoverAction.dart';
import 'package:bet_trends/widgets/navbar.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  final b1Key = new GlobalKey();

  final b2Key = new GlobalKey();

  final b3Key = new GlobalKey();

  final b4Key = new GlobalKey();

  bool isAppBarChange;
  ScrollController _controller;
  _scrollListener() {
    if (_controller.offset > 400 && !_controller.position.outOfRange) {
      setState(() {
        print("required area");
        isAppBarChange = true;
      });
    }
    if (_controller.offset < 400 && !_controller.position.outOfRange) {
      setState(() {
        print("top area");
        isAppBarChange = false;
      });
    }
  }

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
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: deviceWidth > 850
          ? NavBar(change: isAppBarChange)
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
        controller: _controller,
        isAlwaysShown: true,
        showTrackOnHover: true,
        child: SingleChildScrollView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Text(
                      "faq-main-heading".tr().toString(),
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: buildLeftContainer(context),
                      ),
                      Flexible(
                        flex: 5,
                        child: buildRightContainer(context),
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

  Widget buildLeftContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "F.A.Q".toUpperCase(),
              style: TextStyle(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            height: 1,
            color: Colors.white54,
          ),
          GestureDetector(
            onTap: () {
              Scrollable.ensureVisible(
                b1Key.currentContext,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: HoverAction(
                  text: "left-btn-1",
                  // .tr(),
                  defaultColor: Colors.white,
                  hoverColor: Colors.black54),
            ),
          ),
          GestureDetector(
            onTap: () {
              Scrollable.ensureVisible(
                b2Key.currentContext,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: HoverAction(
                  text: "left-btn-2",
                  // .tr(),
                  defaultColor: Colors.white,
                  hoverColor: Colors.black54),
            ),
          ),
          GestureDetector(
            onTap: () {
              Scrollable.ensureVisible(
                b3Key.currentContext,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: HoverAction(
                  text: "left-btn-3",
                  // .tr(),
                  defaultColor: Colors.white,
                  hoverColor: Colors.black54),
            ),
          ),
          GestureDetector(
            onTap: () {
              Scrollable.ensureVisible(
                b4Key.currentContext,
                duration: Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: HoverAction(
                  text: "left-btn-4",
                  // .tr(),
                  defaultColor: Colors.white,
                  hoverColor: Colors.black54),
            ),
          ),
        ],
      ),
    );
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

  Widget buildRightContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            key: b1Key,
            child: buildTextItem(
              "left-btn-1".tr().toString() + "\n",
              FontWeight.w600,
              Theme.of(context).primaryColor,
              25,
            ),
          ),
          buildTextItem(
            "faq-h1-1-h".tr().toString() + "\n",
            FontWeight.w600,
            Color.fromRGBO(117, 117, 117, 1),
            20,
          ),
          buildTextItem(
            "faq-h1-1-c".tr().toString() + "\n\n",
            FontWeight.w500,
            Color.fromRGBO(117, 117, 117, 1),
            17,
          ),
          buildTextItem(
            "faq-h1-2-h".tr().toString() + "\n",
            FontWeight.w600,
            Color.fromRGBO(117, 117, 117, 1),
            20,
          ),
          buildTextItem(
            "faq-h1-2-c".tr().toString() + "\n\n",
            FontWeight.w500,
            Color.fromRGBO(117, 117, 117, 1),
            17,
          ),
          buildTextItem(
            "faq-h1-3-h".tr().toString() + "\n",
            FontWeight.w600,
            Color.fromRGBO(117, 117, 117, 1),
            20,
          ),
          buildTextItem(
            "faq-h1-3-c".tr().toString() + "\n\n",
            FontWeight.w500,
            Color.fromRGBO(117, 117, 117, 1),
            17,
          ),
          SizedBox(height: 20),
          Container(
            height: 1,
            color: Colors.grey[350],
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          Padding(
            key: b2Key,
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: template1(
              context,
              "left-btn-2".tr().toString(),
              "faq-h2-1-h".tr().toString(),
              "faq-h2-1-c".tr().toString(),
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey[350],
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          Padding(
            key: b3Key,
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: template1(
              context,
              "left-btn-3".tr().toString(),
              "faq-h3-1-h".tr().toString(),
              "faq-h3-1-c".tr().toString(),
            ),
          ),
          Container(
            height: 1,
            color: Colors.grey[350],
            padding: EdgeInsets.symmetric(vertical: 20),
          ),
          Padding(
            key: b4Key,
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: template1(
              context,
              "left-btn-4".tr().toString(),
              "faq-h4-1-h".tr().toString(),
              "faq-h4-1-c".tr().toString(),
            ),
          ),
        ],
      ),
    );
  }

  Widget template1(BuildContext context, String h1, String h2, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: buildTextItem(
            h1,
            FontWeight.w600,
            Theme.of(context).primaryColor,
            25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: buildTextItem(
            h2,
            FontWeight.w600,
            Color.fromRGBO(117, 117, 117, 1),
            20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: buildTextItem(
            content,
            FontWeight.w500,
            Color.fromRGBO(117, 117, 117, 1),
            17,
          ),
        ),
      ],
    );
  }
}
