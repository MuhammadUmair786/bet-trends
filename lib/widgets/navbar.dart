import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'hoverAction.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  // final Color begroundColor;
  final bool change;

  NavBar({Key key, @required this.change}) : super(key: key);
  @override
  _NavBarState createState() => _NavBarState();

  @override
  Size get preferredSize => Size(double.infinity, 70);
}

class _NavBarState extends State<NavBar> {
  // bool isChange = widget.change;

  // _NavBarState(this.isChange);
  bool isChange;

  @override
  Widget build(BuildContext context) {
    isChange = widget.change;
    print(isChange.toString() + " Navbar");

    return Container(
      color: isChange ? Colors.white : Theme.of(context).primaryColor,
      padding: EdgeInsets.symmetric(vertical: 10),
      // decoration: BoxDecoration(
      // gradient: LinearGradient(
      //   begin: Alignment.topLeft,
      //   end: Alignment.centerRight,
      //   colors: [
      //     Color.fromRGBO(34, 191, 160, 1),
      //     Color.fromRGBO(36, 195, 164, 1),
      //     Color.fromRGBO(39, 204, 171, 1),
      //     Color.fromRGBO(46, 212, 179, 1),
      //   ],
      // ),
      // ),
      // height: 70,height is in size
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.of(context).pushNamed('/home');
              Navigator.of(context).pushNamed('/home', arguments: {'index': 1});
            },
            child: Image.asset(
              "images/logo.png",
              height: 50,
              width: 200,
              color: isChange ? null : Colors.white,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          GestureDetector(
            onTap: () {
              print(isChange.toString() + " Navbar-home btn");
              Navigator.of(context).pushNamed('/home', arguments: {'index': 1});
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: HoverAction(
                text: 'home',

                // .tr().toString(),

                hoverColor: isChange
                    ? Colors.black87
                    : Color.fromRGBO(117, 117, 117, 1),
                defaultColor:
                    // isChange ? Colors.white : Theme.of(context).primaryColor,
                    isChange ? Theme.of(context).primaryColor : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home', arguments: {'index': 2});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: HoverAction(
                text: 'features',
                // .tr().toString(),
                hoverColor: isChange
                    ? Colors.black87
                    : Color.fromRGBO(117, 117, 117, 1),
                defaultColor:
                    isChange ? Theme.of(context).primaryColor : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home', arguments: {'index': 3});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: HoverAction(
                text: 'price',
                // .tr().toString(),
                hoverColor: isChange
                    ? Colors.black87
                    : Color.fromRGBO(117, 117, 117, 1),
                defaultColor:
                    isChange ? Theme.of(context).primaryColor : Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home', arguments: {'index': 4});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: HoverAction(
                text: 'users',
                // .tr().toString(),
                defaultColor:
                    isChange ? Theme.of(context).primaryColor : Colors.white,
                hoverColor: isChange
                    ? Colors.black87
                    : Color.fromRGBO(117, 117, 117, 1),
              ),
              //   buildItem(
              // "users".tr().toString(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: buildDropdownButtonLanguage(context),
          ),
        ],
      ),
    );
  }

  DropdownButton<String> buildDropdownButtonLanguage(BuildContext context) {
    return DropdownButton<String>(
      // dropdownColor: Colors.amber,
      // focusColor: Colors.blue,
      value: EasyLocalization.of(context).currentLocale == Locale('en', 'GB')
          ? "eng"
          : "fr",
      icon: Icon(
        Icons.arrow_drop_down,
        color: isChange ? Theme.of(context).primaryColor : Colors.white,
      ),
      iconSize: 22,
      elevation: 8,
      iconEnabledColor: Colors.blue,
      // focusColor: Theme.of(context).primaryColor,
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
                hoverColor: isChange
                    ? Colors.black87
                    : Color.fromRGBO(117, 117, 117, 1),
                defaultColor:
                    isChange ? Theme.of(context).primaryColor : Colors.white,
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
  //         color: Colors.white,
  //         fontSize: 18,
  //       ),
  //     ),
  //   );
  // }
}
