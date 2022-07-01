import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MyCustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double width;
  MyCustomButton({Key key, this.text, this.onPressed, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 34,
      child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: blueCustom,
          onPressed: onPressed,
          child: Text(text, style: TextStyle(color: Colors.white))),
    );
  }
}
