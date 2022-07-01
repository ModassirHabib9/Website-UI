import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:web_portfolio/Widgets/appbar2.dart';
import 'package:web_portfolio/Widgets/constantRow.dart';
import '../../Widgets/TimerField/date_picker_widget.dart';
import '../../Widgets/customAppbar.dart';

import '../../Widgets/myCustomButton.dart';
import '../ForensicsTab.dart';
import '../ScreeningTab.dart';
import '../SettingTab.dart';

class ScreeningReportDetailsScreen extends StatefulWidget {
  const ScreeningReportDetailsScreen({Key key}) : super(key: key);

  @override
  State<ScreeningReportDetailsScreen> createState() =>
      _ScreeningReportDetailsScreenState();
}

///////// dropdown menu /////////

///////// dropdown menu /////////
class _ScreeningReportDetailsScreenState
    extends State<ScreeningReportDetailsScreen> {
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
    // DashboardTab(),
    ScreeningTab(),
    ForensicsTab(),
    // ManualScreeningTab(),
    SettingTab(),
  ];

  ///           Start Building the UI /////

  @override
  Widget build(BuildContext context) {
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
                      child: Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Get.back(canPop: true);
                              },
                              color: Colors.blue),
                          Text(
                            'Screening Report',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///    header   //////////////////////

              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                color: Colors.grey[200],
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
                                                        Text("Report Summary",
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
                                                                  "Date",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "11/5/2021, 6:00:15 PM",
                                                                  style:
                                                                      TextStyle()),
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
                                                                  "Screening Token",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "4852923f-ad2b-4db2-ae6f-62f0e10e663d",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .blue,
                                                                  )),
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
                                                                  "External Id",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Sascha Stanimirov"),
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
                                                                  "Manual Screening",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    color: Colors
                                                                        .white,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .black,
                                                                  )),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 5th Row
                                                        SizedBox(height: 10),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10),
                                                          child: Card(
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                              .all(
                                                                          8.0),
                                                                  child: Text(
                                                                      "SUBMITTED FILES",
                                                                      style: TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold)),
                                                                ),
                                                                Image.asset(
                                                                  "assets/ios.png",
                                                                ),
                                                                RaisedButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  onPressed:
                                                                      () {},
                                                                  child: Text(
                                                                      "Translate"),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 10),
                                                        Divider(),
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
                    SizedBox(width: 10),
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
                                                          right: 20.0,
                                                          left: 20.0,
                                                          bottom: 8.0),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Client Profile",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Image.asset(
                                                                'assets/ios.png',
                                                                height: 120,
                                                                width: 120),
                                                            SizedBox(
                                                                height: 20),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "Aleksandar Stanimirov",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                                Text(
                                                                    "Male, 1976-01-20")
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 10),

                                                        SizedBox(height: 10),
                                                        Divider(),

                                                        /// 1st Row
                                                        SizedBox(height: 10),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                  "Info Type",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Details",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
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
                                                              child: Text(""),
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
                                                                  "Gender",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  Text("Male"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Given Names",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "	Aleksandar"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Surname",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Stanimirov"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Date of Birth",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Birth 1976-01-20"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Nationality",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  Text("CHE"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Document Number",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "X0532926"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Expiry Date",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "2021-01-17"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Country of Issue",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  Text("CHE"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                                                                  "Document Type",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  "Passport"),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                children: [
                                                                  Icon(
                                                                      Icons
                                                                          .check,
                                                                      color: Colors
                                                                          .green),
                                                                  Text(
                                                                      " Extracted"),
                                                                ],
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Icon(Icons
                                                                      .chat),
                                                                  Text("0"),
                                                                ],
                                                              ),
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
                  ]),

              ///   textfield   //////////////////////
              ///// extra Data  ///////////////////////////////
              SizedBox(height: 10),
              Card(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// 4th Row
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text("ID Document",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Expanded(
                                      child: Text("MRZ ?",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Expanded(
                                      child: Text("VIZ ?",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Expanded(
                                      child: Text("Valid",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    // Expanded(
                                    //   child: Text("        ",
                                    //       style: TextStyle(
                                    //           fontSize: 15,
                                    //           fontWeight: FontWeight.bold)),
                                    // ),
                                  ],
                                ),

                                ///Row 5 /////////////////////
                                /// 4th Row
                                SizedBox(height: 10),
                                CustomRow(
                                  text1: "Document class code",
                                  text2: "CHE",
                                  text3: "CHE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1:
                                      "Issuing country document code in accordance with the standard ISO 3166-1 (ICAO, document 9303)",
                                  text2: "CHE",
                                  text3: "CHE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Document number",
                                  text2: "CHE",
                                  text3: "CHE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Document expiration date",
                                  text2: "2021-01-17",
                                  text3: "2021-01-17",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Date of issue",
                                  text2: "2021-01-17",
                                  text3: "2021-01-17",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Date of birth",
                                  text2: "2021-01-17",
                                  text3: "2021-01-17",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1:
                                      "Place of birth - French (Switzerland)",
                                  text2: "2021-01-17",
                                  text3: "Bonigen BE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Place of birth",
                                  text2: "2021-01-17",
                                  text3: "Bonigen BE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Surname - French (Switzerland)",
                                  text2: "2021-01-17",
                                  text3: "Bonigen BE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Surname",
                                  text2: "2021-01-17",
                                  text3: "Bonigen BE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1:
                                      "Given name (names) - French (Switzerland)",
                                  text2: "2021-01-17",
                                  text3: "Bonigen BE",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Given name (names)",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Nationality",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Sex",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Height",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1:
                                      "Document issuing authority - French (Switzerland)",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Full name - French (Switzerland)",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Full name",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1:
                                      "Nationality letter code according to standard ISO 3166-1 (ICAO doc 9303)",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "MRZ type",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Full name of issuing state",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "MRZ strings",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Check digit for document number",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Check digit for date of birth",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Check digit for date of expiry",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Final check digit for all MRZ",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Age",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1:
                                      "Number of months before the due date expiration of a document",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Age at issue",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                                SizedBox(height: 10),

                                CustomRow(
                                  text1: "Years since issue",
                                  text2: "Given name (names)",
                                  text3: "Given name (names)",
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset('assets/ios.png'),
                          SizedBox(height: 30),
                          Image.asset('assets/ios.png'),
                        ],
                      )),
                    ]),
              ),

              ///    Button   //////////////////////
              ///
              Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("AML / OFAC / PEP Screening",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          SizedBox(height: 20),
                          Text(
                            "No AML / OFAC / PEP Screening matches were found.",
                          )
                        ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
