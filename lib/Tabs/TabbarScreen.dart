import 'package:flutter/material.dart';
import 'package:web_portfolio/Tabs/ForensicsTab.dart';
import 'package:web_portfolio/Tabs/ScreeningTab.dart';
import 'package:web_portfolio/Tabs/SettingTab.dart';
import 'package:web_portfolio/Widgets/customAppbar.dart';

class TabbarScreen extends StatefulWidget {
  TabbarScreen({Key key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

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

class _TabbarScreenState extends State<TabbarScreen> {
  final _KTabViews = <Widget>[
    // DashboardTab(),
    ScreeningTab(),
    ForensicsTab(),
    // ManualScreeningTab(),
    SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    const Size(360, 690);
    return DefaultTabController(
        initialIndex: 0,
        length: _KTabViews.length,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: CustomAppbar(),
          ),
          body: TabBarView(
            children: _KTabViews,
          ),
        ));
  }
}
