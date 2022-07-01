import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:web_portfolio/Tabs/SettingTab.dart';
import 'package:web_portfolio/Tabs/TabbarScreen.dart';

import '../Tabs/Dashboard/AccountingScreen.dart';
import '../Tabs/ForensicsTab.dart';
import '../Tabs/Manual_screening_extension/DocumentForensicAnalysis.dart';
import '../Tabs/Manual_screening_extension/NameSearch.dart';
import '../Tabs/Manual_screening_extension/QuickDocumentScan.dart';
import '../Tabs/Manual_screening_extension/email_verification.dart';
import '../Tabs/ScreeningTab.dart';
import 'MyDropDownMenu.dart';
import '../utils/constants.dart';
import 'myTextField.dart';

class CustomAppbar2 extends StatelessWidget {
  CustomAppbar2({Key key}) : super(key: key);

  List<String> _dashboard = [
    'Accounting',
  ]; // Option 2
  String _dashboardSelected;
  List<String> _manualScreening = [
    'Email Verification',
    'Quick Name Search',
    'Quick Document Scan',
    'Document Forensic Analysis',
  ]; // Option 2
  String _selectedScreening;

  final _KTabViews = <Widget>[
    // DashboardTab(),
    ScreeningTab(),
    ForensicsTab(),
    // ManualScreeningTab(),
    SettingTab(),
  ];
  final Set<String> status = {'Test Company', 'Swiss AMF AG'};
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: blueCustom,
      elevation: 1,
      actionsIconTheme: IconThemeData(color: Colors.black),
      iconTheme: IconThemeData(color: Colors.black),
      toolbarTextStyle: TextStyle(color: Colors.black),
      actions: [
        Container(
          padding: EdgeInsets.only(top: 11, bottom: 11),
          child: DropDownMenu(
              // colour: Colors.transparent,
              containerWidth: MediaQuery.of(context).size.width * 0.10,
              containerHeight: 20.h,
              fontSized: 12.sp,
              hint: 'Swiss AMF AG',
              dropdownList: status),
        ),
        SizedBox(width: 5),
        Container(
          margin: EdgeInsets.only(top: 10, right: 10, bottom: 16),
          height: 20,
          child: RaisedButton(
            color: GrayCustom,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Text('Logout', style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
        ),
      ],
      title: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: Image.asset('assets/logo.png')),
          SizedBox(width: 50),
          SizedBox(
            width: 105,
            child: DropdownButton(
                isDense: true,
                isExpanded: true,
                underline: Text(""),
                hint: Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.white),
                ), // Not necessary for Option 1
                value: _dashboardSelected,
                onChanged: (val) {
                  _dashboardSelected = val;
                  print("object");
                  switch (val) {
                    case "Accounting":
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountingScreen()));
                      break;
                  }
                },
                items: _dashboard.map((location) {
                  return DropdownMenuItem(
                    child: Text(location.toString(),
                        style: TextStyle(fontSize: 12)),
                    value: location,
                  );
                }).toList()),
          ),
          TabBar(
            tabs: [
              InkWell(
                  onTap: () {
                    Get.to(TabbarScreen());
                  },
                  child: Tab(child: Text('Screenings'))),
              InkWell(
                  onTap: () {
                    Get.to(TabbarScreen());
                  },
                  child: Tab(text: 'Forensics')),
              // Tab(text: 'Forensics'),

              InkWell(
                  onTap: () {
                    Get.to(TabbarScreen());
                  },
                  child: Tab(text: 'Settings')),
              // Tab(text: 'Manual Screenings'),
              // Tab(text: 'Settings'),
            ],
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
          ),
          SizedBox(width: 5),
          Container(
            width: 150,
            // height: 30,
            child: DropdownButton(
                isDense: true,
                isExpanded: true,
                // style: TextStyle(fontSize: 10),
                underline: Text(""),
                hint: Text(
                  'Manual Screens',
                  style: TextStyle(color: Colors.white),
                ), // Not necessary for Option 1
                value: _selectedScreening,
                onChanged: (val) {
                  _selectedScreening = val;
                  switch (val) {
                    case "Email Verification":
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EmailVerificationDropdown()));
                      break;
                    case "Quick Name Search":
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NameSearchScreen()));
                      break;
                    case "Quick Document Scan":
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DocumentScanScreen()));
                      break;
                    case "Document Forensic Analysis":
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DocumentForensicAnalysisScreen()));
                      break;
                  }
                },
                items: _manualScreening.map((location) {
                  return DropdownMenuItem(
                    child: Text(
                      location.toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                    value: location,
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}
