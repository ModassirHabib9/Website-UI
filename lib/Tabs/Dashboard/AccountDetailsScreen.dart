import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:web_portfolio/Widgets/appbar2.dart';
import '../../Widgets/TimerField/date_picker_widget.dart';
import '../../Widgets/customAppbar.dart';

import '../../Widgets/myCustomButton.dart';
import '../ForensicsTab.dart';
import '../ScreeningTab.dart';
import '../SettingTab.dart';

class AccountingDetailsScreen extends StatefulWidget {
  const AccountingDetailsScreen({Key key}) : super(key: key);

  @override
  State<AccountingDetailsScreen> createState() =>
      _AccountingDetailsScreenState();
}

///////// dropdown menu /////////

///////// dropdown menu /////////
class _AccountingDetailsScreenState extends State<AccountingDetailsScreen> {
  TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;

  final _pictureController = TextEditingController();
  final picker = ImagePicker();
  File _imageFile;
  var obj;
  var pickedImage;

  ///// Appbar /////
  ///// Appbar /////
  /* File _pickedImage;
  Uint8List webImage = Uint8List(8);
  Future chooseImage() async {
    if (!kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var selected = File(image.path);
        setState(() {
          _pickedImage = selected;
        });
      } else {
        Fluttertoast.showToast(
            msg: "Please select an image",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          webImage = f;
          _pickedImage = File("a");
        });
      } else {
        Fluttertoast.showToast(
            msg: "Please select an image",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } else {
      print("Something went wrong");
    }
  }*/

  bool value = false;
  final _KTabViews = <Widget>[
    ScreeningTab(),
    ForensicsTab(),
    SettingTab(),
  ];

  ///           Start Building the UI /////

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 90),
      // ChartData('Steve', 38),
      // ChartData('Jack', 34),
      // ChartData('Others', 52)
    ];

    /// Table Data //////////////////////////////////

    /// Table Data //////////////////////////////////
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      child: Text(
                        'Accounting Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),

              ///    header   //////////////////////
              SizedBox(height: 10),
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
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(
                text: 'From Date: ',
                style: TextStyle(),
                children: [
                  TextSpan(
                    text: '2022-06-16 ',
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: ' UTC',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' To Date: ',
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: '2022-06-16 ',
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: 'UTC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Container(
                            // padding: EdgeInsets.all(12),
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
                                          children: [
                                            Card(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0,
                                                          right: 8.0,
                                                          left: 20.0,
                                                          bottom: 8.0),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Cost Summary",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Type",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Count",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Cost",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 2nd Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "IdVerification",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "0 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 3rd Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "AmlScreening",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 4th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "ManualAmlReview",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 5th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Biometrics",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 6th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "ProofOfAddress",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 7th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Geolocation",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 8th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Forensics",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 9th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Total:",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                      ]),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ]),

                                /// 3rd Row ///////////////////////////////
                                ///
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: SfCircularChart(
                            // borderColor: Colors.red,

                            onTooltipRender: (tooltipArgs) => _tooltipBehavior,
                            tooltipBehavior: _tooltipBehavior,
                            series: <CircularSeries>[
                              DoughnutSeries<ChartData, String>(
                                  enableTooltip: true,
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y,
                                  // Radius of doughnut's inner circle
                                  innerRadius: '80%')
                            ])),
                  ]),

              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Container(
                            // padding: EdgeInsets.all(12),
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
                                          children: [
                                            Card(
                                                elevation: 5,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0,
                                                          right: 8.0,
                                                          left: 20.0,
                                                          bottom: 8.0),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Users Summary",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Status",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Risk Level",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Reject Reson",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Count",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 2nd Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Total Accepted",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 3rd Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Total Rejected",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 4th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Accepted",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  Text("Low"),
                                                            ),
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 5th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Accepted",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Medium"),
                                                            ),
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 6th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Accepted",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2 Credits"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 7th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Rejected",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Bad Data"),
                                                            ),
                                                            Expanded(
                                                              child: Text("0"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 8th Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Rejected",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(""),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Conditions Not Met",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text("2"),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                      ]),
                                                ))
                                          ],
                                        ),
                                      ),
                                    ]),

                                /// 3rd Row ///////////////////////////////
                                ///
                              ],
                            ),
                          ),
                        )),
                    Expanded(flex: 1, child: Text("")),
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

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color color;
}
