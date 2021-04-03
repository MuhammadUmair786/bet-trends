import 'package:bet_trends/widgets/footer.dart';
import 'package:bet_trends/widgets/hoverAction.dart';
import 'package:bet_trends/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LegalNotices extends StatelessWidget {
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
                  child: Center(
                    child: buildTextItem(
                      "ln-main-heading".tr().toString(),
                      FontWeight.w700,
                      Colors.white,
                      43,
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
                      buildTextItem(
                        "ln-c".tr().toString(),
                        FontWeight.w500,
                        Color.fromRGBO(148, 147, 148, 1),
                        18,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-h1".tr().toString(),
                        FontWeight.w600,
                        Color.fromRGBO(121, 117, 117, 1),
                        22,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-c1".tr().toString(),
                        FontWeight.w500,
                        Color.fromRGBO(148, 147, 148, 1),
                        18,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-h2".tr().toString(),
                        FontWeight.w600,
                        Color.fromRGBO(121, 117, 117, 1),
                        22,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-c2".tr().toString(),
                        FontWeight.w500,
                        Color.fromRGBO(148, 147, 148, 1),
                        18,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-h3".tr().toString(),
                        FontWeight.w600,
                        Color.fromRGBO(121, 117, 117, 1),
                        22,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-c3".tr().toString(),
                        FontWeight.w500,
                        Color.fromRGBO(148, 147, 148, 1),
                        18,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-h4".tr().toString(),
                        FontWeight.w600,
                        Color.fromRGBO(121, 117, 117, 1),
                        22,
                      ),
                      SizedBox(height: 20),
                      buildTextItem(
                        "ln-c4".tr().toString(),
                        FontWeight.w500,
                        Color.fromRGBO(148, 147, 148, 1),
                        18,
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
}
