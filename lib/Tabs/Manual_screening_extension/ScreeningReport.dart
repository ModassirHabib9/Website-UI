import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/Widgets/appbar2.dart';
import 'package:web_portfolio/Widgets/customAppbar.dart';

import '../ForensicsTab.dart';
import '../ScreeningTab.dart';
import '../SettingTab.dart';

class ScreeningReportScreen extends StatefulWidget {
  const ScreeningReportScreen({Key key}) : super(key: key);

  @override
  State<ScreeningReportScreen> createState() => _ScreeningReportScreenState();
}

class _ScreeningReportScreenState extends State<ScreeningReportScreen> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;
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
    final DATATABLE3 dts = DATATABLE3();
    final int tableItemsCount = dts.rowCount;
    final int defaultRowsPerPage = PaginatedDataTable.defaultRowsPerPage;
    final bool isRowCountLessDefaultRowsPerPage =
        tableItemsCount < defaultRowsPerPage;
    _rowsPerPage =
        isRowCountLessDefaultRowsPerPage ? tableItemsCount : defaultRowsPerPage;
    return DefaultTabController(
      length: _KTabViews.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: CustomAppbar2(),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back, color: Colors.blue)),
                        Container(
                          child: Text(
                            'Screening Report',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              ///    header   //////////////////////
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                            // height: 150,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[200]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Report Summary",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Date",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text("6/13/2022, 10:38:03 PM"),
                                  ],
                                ),
                                Divider(height: 5),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Screening Token",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      "b2757ac9-416a-4ca2-81f1-d1a10517596d",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 15),
                                    ),
                                  ],
                                ),
                                Divider(height: 5),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("External Id",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      "snas",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                                Divider(height: 5),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Status",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                    Text(
                                      "Manual Screening",
                                      style: TextStyle(
                                          backgroundColor: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Divider(
                                  height: 5,
                                  // color: Colors.grey,
                                ),
                                SizedBox(height: 10),
                                Container(
                                    width: double.infinity,
                                    // height: 30,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white70),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("SUBMITTED FILES"),
                                        Text("None"),
                                      ],
                                    ))
                              ],
                            ))),
                    SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Client Profile",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "nmsanm snsn",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Male, 2001-06-13",
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(height: 30),
                              Divider(height: 5),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.w,
                                    child: Text("Info Type",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 40.w,
                                    child: Text("Details",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 50.w,
                                    child: Text("Status",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(width: 30.w, child: Text("")),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(height: 5),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.w,
                                    child: Text("Gender",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 40.w,
                                    child: Text(
                                      "Male",
                                    ),
                                  ),
                                  Container(
                                    width: 50.w,
                                    child: Row(
                                      children: [
                                        Icon(Icons.check),
                                        Text(
                                          "Submitted",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 30.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.chat),
                                        Text(
                                          "0",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(height: 5),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.w,
                                    child: Text("Given Names",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 40.w,
                                    child: Text(
                                      "nmsanm",
                                    ),
                                  ),
                                  Container(
                                    width: 50.w,
                                    child: Row(
                                      children: [
                                        Icon(Icons.check),
                                        Text(
                                          "Submitted",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    width: 30.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.chat),
                                        Text(
                                          "0",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(height: 5),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.w,
                                    child: Text("Surname",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 40.w,
                                    child: Text(
                                      "snsn ",
                                    ),
                                  ),
                                  Container(
                                    width: 50.w,
                                    child: Row(
                                      children: [
                                        Icon(Icons.check),
                                        Text(
                                          "Submitted",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 30.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.chat),
                                        Text(
                                          "0",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(height: 5),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.w,
                                    child: Text("Date of Birth",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 40.w,
                                    child: Text(
                                      "2001-06-13 ",
                                    ),
                                  ),
                                  Container(
                                    width: 50.w,
                                    child: Row(
                                      children: [
                                        Icon(Icons.check),
                                        Text(
                                          "Submitted",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 30.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.chat),
                                        Text(
                                          "0",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(height: 5),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.w,
                                    child: Text("Nationality",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    width: 40.w,
                                    child: Text(
                                      "USA",
                                    ),
                                  ),
                                  Container(
                                    width: 50.w,
                                    child: Row(
                                      children: [
                                        Icon(Icons.check),
                                        Text(
                                          "Submitted",
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 30.w,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(Icons.chat),
                                        Text(
                                          "0",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              SizedBox(height: 10),

                              /*PaginatedDataTable(
                                arrowHeadColor: Colors.black,
                                onRowsPerPageChanged:
                                    isRowCountLessDefaultRowsPerPage
                                        ? null
                                        : (rowCount) {
                                            setState(() {
                                              _rowsPerPage1 = rowCount;
                                            });
                                          },
                                columns: const <DataColumn>[
                                  // DataColumn(label: Text('row')),
                                  DataColumn(
                                      label: Text('Id',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Screening Token',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Tag',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))),
                                  DataColumn(
                                      label: Text('Status',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold))),
                                ],
                                source: dts,
                                rowsPerPage: isRowCountLessDefaultRowsPerPage
                                    ? _rowsPerPage
                                    : _rowsPerPage1,
                              ),*/
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),

              ///    Table Data   //////////////////////
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AML / OFAC / PEP Screening",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text("No AML / OFAC / PEP Screening matches were found."),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class DATATABLE3 extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        // DataCell(Text('row #$index')),
        DataCell(
            Text('nasnasjasjk', style: TextStyle(fontWeight: FontWeight.bold))),
        DataCell(Text('jnzj $index')),
        DataCell(Text('Robin passport $index')),
        DataCell(Text('Processing $index')),
      ],
    );
  }

  @override
  int get rowCount => 3;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

/// This is the stateless widget that the main application instantiates.
