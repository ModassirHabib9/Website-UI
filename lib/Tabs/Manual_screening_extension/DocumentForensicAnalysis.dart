import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/Widgets/appbar2.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';
import 'package:web_portfolio/utils/constants.dart';

import '../../Widgets/customAppbar.dart';
import '../../Widgets/myCustomButton.dart';
import '../../Widgets/tabbarTwo.dart';
import '../Dashboard/AccountingScreen.dart';
import '../ForensicsTab.dart';
import '../ScreeningTab.dart';
import '../SettingTab.dart';
import 'NameSearch.dart';
import 'QuickDocumentScan.dart';
import 'email_verification.dart';

class DocumentForensicAnalysisScreen extends StatefulWidget {
  const DocumentForensicAnalysisScreen({Key key}) : super(key: key);

  @override
  State<DocumentForensicAnalysisScreen> createState() =>
      _DocumentForensicAnalysisScreenState();
}

///////// dropdown menu /////////

///////// dropdown menu /////////
class _DocumentForensicAnalysisScreenState
    extends State<DocumentForensicAnalysisScreen> {
  ///// Appbar /////
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

  bool value = false;

  ///           Start Building the UI /////

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: _KTabViews.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: CustomAppbar2(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Document Forensic Analysis',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),

              ///    header   //////////////////////
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: SizedBox(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),

                                /// 3rd Row ///////////////////////////////

                                SizedBox(height: 10),
                                Text("Tag"),
                                MyTextFormField_Web(
                                  hint: 'Enter Internal Id',
                                  kry: TextInputType.text,
                                ),
                                SizedBox(height: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.add, color: Colors.blue),
                                      Text("Tag"),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                                MyCustomButton(
                                  width: double.infinity,
                                  text: "Scan Document",
                                  onPressed: () {
                                    /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RegistrationScreen()));*/
                                  },
                                ),
                                /*Container(
                                  width: double.infinity,
                                  child: RaisedButton(
                                    color: blueCustom,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    onPressed: () {
                                      // Navigator.pop(context);
                                      // chooseImage();
                                    },
                                    child: Text('Scan Document'),
                                  ),
                                ),*/
                              ],
                            ),
                          ),
                        ))),
                    SizedBox(width: 10),
                    Expanded(
                        flex: 1,
                        child: Container(
                          // height: 155,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: blueCustom),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Document Forensic Analysis',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(height: 10),
                              Text(
                                  'Evaluate documents to identify whether they have been modified. This includes a complete image and PDF file metadata analysis and verification of document authenticity. Forensic document analysis can be performed on any document, including utility bills, bank statements, passport pictures, and any other picture documents.',
                                  style: TextStyle(fontSize: 14)),
                              SizedBox(height: 10),
                              Text('5 Credits', style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        )),
                  ]),

              ///   textfield   //////////////////////

              ///    Button   //////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
