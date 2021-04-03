import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HoverAction extends StatefulWidget {
  final text;
  final Color defaultColor;
  final Color hoverColor;

  const HoverAction(
      {@required this.text,
      @required this.defaultColor,
      @required this.hoverColor});
  @override
  // _HoverActionState createState() =>
  //     _HoverActionState(text, defaultColor, hoverColor);
  _HoverActionState createState() => _HoverActionState();
}

class _HoverActionState extends State<HoverAction> {
  // String text;
  // Color defaultColor;
  // Color hoverColor;

  // _HoverActionState(this.text, this.defaultColor, this.hoverColor);
  // Color textColor;

  // @override
  // void initState() {
  //   super.initState();

  //   textColor = widget.defaultColor;
  //   text = widget.text;
  //   defaultColor = widget.defaultColor;
  //   hoverColor = widget.hoverColor;

  // }

  @override
  Widget build(BuildContext context) {
    String text = widget.text;
    Color defaultColor = widget.defaultColor;
    Color hoverColor = widget.hoverColor;
    // Color textColor = widget.defaultColor;
    Color textColor = defaultColor;
    return MouseRegion(
      // onEnter: _incrementEnter,
      onHover: (PointerEvent details) {
        setState(() {
          textColor = hoverColor;
        });
      },
      onExit: (PointerEvent details) {
        setState(() {
          textColor = defaultColor;
        });
      },
      child: Text(
        text.tr().toString(),
        style: TextStyle(
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500,
          color: textColor,
          fontSize: 17,
        ),
      ),
    );
  }
}
