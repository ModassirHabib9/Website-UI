import 'package:flutter/material.dart';
import 'package:web_portfolio/Tabs/Dashboard/AccountDetailsScreen.dart';
import 'package:web_portfolio/Widgets/TimerField/date_picker_widget.dart';
import 'package:web_portfolio/Widgets/appbar2.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';
import 'package:web_portfolio/utils/constants.dart';

import '../../Widgets/customAppbar.dart';
import '../../Widgets/myCustomButton.dart';
import '../ForensicsTab.dart';
import '../Manual_screening_extension/DocumentForensicAnalysis.dart';
import '../Manual_screening_extension/NameSearch.dart';
import '../Manual_screening_extension/QuickDocumentScan.dart';
import '../Manual_screening_extension/email_verification.dart';
import '../ScreeningTab.dart';
import '../SettingTab.dart';

class AccountingScreen extends StatelessWidget {
  AccountingScreen({Key key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _KTabViews.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: CustomAppbar2(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text('Accounting',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(child: DatePickerWidget2()),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(child: DatePickerWidget2()),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: MyCustomButton(
                      text: "Search",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    AccountingDetailsScreen()));
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
