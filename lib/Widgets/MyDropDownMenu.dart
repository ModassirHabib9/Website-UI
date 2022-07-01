import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownMenu extends StatefulWidget {
  DropDownMenu(
      {this.fontSized,
      this.hint,
      this.dropdownList,
      this.onPressed,
      this.containerHeight,
      this.containerWidth,
      this.colour});
  final String hint;
  final Set<String> dropdownList;
  Function onPressed;
  double fontSized = 0;

  double containerWidth;
  double containerHeight;
  Color colour;

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  var selectedValue;
  // String _selectedGender = 'Select Gender';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: widget.containerHeight,
        width: widget.containerWidth,
        padding: EdgeInsets.symmetric(horizontal: 10),

        // margin: EdgeInsets.symmetric(horizontal: 24.5.w),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white.withOpacity(0.9),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        // margin: EdgeInsets.symmetric(vertical: 9.5.h, horizontal: 24.5.w),
        child: DropdownButton(
          isExpanded: true,
          // iconSize: 50.0,
          // icon: Container(
          //   // margin: EdgeInsets.only(bottom: 6.h ),
          //   child: Align(
          //     alignment: Alignment.centerRight,
          //     child: Icon(
          //       Icons.arrow_drop_down,
          //       color: Colors.black,
          //       size: 45.sp,
          //     ),
          //   ),
          // ),
          // iconDisabledColor: Colors.black,
          // iconEnabledColor: Colors.black,
          underline: SizedBox(),
          hint: Text(
            widget.hint,
            style: TextStyle(
              fontSize: widget.fontSized,
              color: Colors.black,
            ),
          ),
          items: widget.dropdownList
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: widget.fontSized,
                    ),
                  ),
                ),
              )
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(
              () {
                selectedValue = value as String;

                print(selectedValue);
              },
            );
          },
        ),
      ),
    );
  }
}
