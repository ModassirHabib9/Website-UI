import 'package:flutter/material.dart';

class ButtonHeaderWidget2 extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback onClicked;

  const ButtonHeaderWidget2({
    Key key,
    @required this.title,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => HeaderWidget(
        title: title,
        child: ButtonWidget(
          text: text,
          onClicked: onClicked,
        ),
      );
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    @required this.text,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: 34,
        alignment: Alignment.centerLeft,
        // width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
          ),
          // color: Colors.white,
        ),
        child: TextButton(
          // style: ElevatedButton.styleFrom(
          //   minimumSize: Size.fromHeight(10),
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(10.0),
          //       side: BorderSide.none),
          // ),
          child: Container(
            width: double.infinity,
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),

          onPressed: onClicked,
        ),
      );
}

class HeaderWidget extends StatelessWidget {
  final String title;
  final Widget child;

  const HeaderWidget({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          child,
        ],
      );
}
