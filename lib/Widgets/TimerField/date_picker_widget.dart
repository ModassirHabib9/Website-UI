import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';

import 'button_widget.dart';

class DatePickerWidget2 extends StatefulWidget {
  @override
  _DatePickerWidget2State createState() => _DatePickerWidget2State();
}

class _DatePickerWidget2State extends State<DatePickerWidget2> {
  DateTime date;

  String getText() {
    if (date == null) {
      return 'Select Date';
    } else {
      // return DateFormat('YYYY-MM-DD').format(date);
      return '${date.day}/${date.month}/${date.year}';
    }
  }

  @override
  Widget build(BuildContext context) => ButtonHeaderWidget2(
        title: 'Date',
        text: getText(),
        onClicked: () => pickDate(context),
      );

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      // keyboardType: TextInputType.datetime,
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.from(
            colorScheme: ColorScheme.light(
              primary: blueCustom,
            ),
          ),
          child: child,
        );
      },
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
    print(newDate.toString());

    // final f = new DateFormat('YYYY-MM-DD')
    String fdate = "${newDate.day}/${newDate.month}/${newDate.year}";
  }
}
