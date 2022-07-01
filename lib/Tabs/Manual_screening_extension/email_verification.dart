import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/Widgets/appbar2.dart';
import 'package:web_portfolio/Widgets/customAppbar.dart';
import 'package:web_portfolio/Widgets/dataTable/email_identity_table.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';
import 'package:web_portfolio/Tabs/Auth/login.dart';
import 'package:web_portfolio/Tabs/Auth/registeration.dart';
import 'package:web_portfolio/utils/constants.dart';

import '../../Widgets/myCustomButton.dart';
import '../../Widgets/tabbarTwo.dart';
import '../ForensicsTab.dart';
import '../ScreeningTab.dart';
import '../SettingTab.dart';

class EmailVerificationDropdown extends StatefulWidget {
  const EmailVerificationDropdown({Key key}) : super(key: key);

  @override
  State<EmailVerificationDropdown> createState() =>
      _EmailVerificationDropdownState();
}

class _EmailVerificationDropdownState extends State<EmailVerificationDropdown> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  bool value = false;

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
          padding: EdgeInsets.only(top: 20, left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Email Identity Verification',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),

              ///    header   //////////////////////
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 3,
                        child: SizedBox(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Name *',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            MyTextFormField_Web(
                                              // width: MediaQuery.of(context).size.width *
                                              //     0.18,
                                              hint: "Countries Blacklist",
                                              kry: TextInputType.text,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Email *',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            MyTextFormField_Web(
                                              // width: MediaQuery.of(context).size.width *
                                              //     0.18,
                                              hint: "I want to receive updates",
                                              kry: TextInputType.text,
                                            )
                                          ],
                                        ),
                                      ),
                                    ]),
                                SizedBox(height: 10),
                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ), //SizedBox
                                    //SizedBox
                                    /** Checkbox Widget **/
                                    Checkbox(
                                      value: this.value,
                                      onChanged: (bool value) {
                                        setState(() {
                                          this.value = value;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'I want to receive updates: ',
                                      style: TextStyle(fontSize: 17.0),
                                    ), //Text
                                    //Checkbox
                                  ], //<Widget>[]
                                ),
                                SizedBox(height: 10),
                                MyCustomButton(
                                  text: "Invite",
                                  onPressed: () {
                                    /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RegistrationScreen()));*/
                                  },
                                ),
                                /*RaisedButton(
                                  color: blueCustom,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {
                                    // Navigator.pop(context);
                                  },
                                  child: Text('Invite'),
                                ),*/
                              ],
                            ),
                          ),
                        ))),
                    SizedBox(width: 10),
                    Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: GrayCustom),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Email Identity Verification',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16)),
                              SizedBox(height: 10),
                              Text(
                                  'In order to invite a user to verify their identity in the GlobalCompliance platform via email, please fill in the required fields. Upon pressing Invite, the user will receive an email invitation to verify their identity.',
                                  style: TextStyle(fontSize: 14)),
                            ],
                          ),
                        )),
                  ]),

              ///    Table Data   //////////////////////
              Container(
                padding: EdgeInsets.only(top: 30, bottom: 30, left: 20),
                child: Text(
                  'Invitations Sent',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                width: double.infinity,
                child: PaginatedDataTable(
                  // header: const Text('Nutrition'),
                  rowsPerPage: _rowsPerPage,
                  showCheckboxColumn: false,
                  // headingRowHeight: 120,

                  dragStartBehavior: DragStartBehavior.down,
                  horizontalMargin: 20,
                  onPageChanged: (int page) {
                    setState(() {
                      print(page);
                    });
                  },
                  onSelectAll: (bool value) {
                    print('select all');

                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  availableRowsPerPage: const <int>[5, 10, 20],
                  onRowsPerPageChanged: (newRowsPerPage) {
                    if (newRowsPerPage != null) {
                      setState(() {
                        _rowsPerPage = newRowsPerPage;
                      });
                    }
                  },
                  // onRowsPerPageChanged: (int value) {
                  //   if (value != null) {
                  //     setState(() => _rowsPerPage = value);
                  //   }
                  // },
                  columns: emailIdentity_kTableColumns,
                  source: DessertDataSource_EmailIdentity(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
