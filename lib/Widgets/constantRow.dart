import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  CustomRow({Key key, this.text1, this.text2, this.text3, this.text4})
      : super(key: key);

  final String text1;
  final String text2;
  final String text3;
  final String text4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),

        /// 4th Row
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(text1,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: Text(
                text2,
              ),
            ),
            Expanded(
              child: Text(
                text3,
              ),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.check, color: Colors.green),
                Column(
                  children: [
                    Icon(
                      Icons.chat,
                      size: 16,
                    ),
                    Text("0", style: TextStyle(fontSize: 10)),
                  ],
                ),
              ],
            )),
          ],
        ),
      ],
    );
  }
}
