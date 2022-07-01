import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:web_portfolio/Widgets/dataTable/my_datatable.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';

class ScreeningTab extends StatefulWidget {
  ScreeningTab({Key key}) : super(key: key);

  @override
  State<ScreeningTab> createState() => _ScreeningTabState();
}

class _ScreeningTabState extends State<ScreeningTab> {
  final List<String> statuss = [
    'Status',
    'Accepted',
    'Rejected',

  ];

  String selectedStatusValue;
  final List<String> extendedSearch = [

    'Aml Search',
  ];

  String selectExtendedSearch;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
    final Set<String> status = {'Status', 'Accepted', 'Rejected'};
    final Set<String> _extendSerach = {'Aml Search'};
    // const Size(360, 690);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(top: 20, left: 14),
                child: Text('Screenings',
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 30))),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyTextFormField_Web(
                  width: MediaQuery.of(context).size.width * 0.18,
                  hint: "Text Search",
                  kry: TextInputType.text,
                ),
                CustomDropdownButton2(
                  buttonHeight: 34,
                  buttonWidth: MediaQuery.of(context).size.width * 0.18,
                  dropdownWidth: MediaQuery.of(context).size.width * 0.18,
                  hint: 'Status',
                  dropdownItems: statuss,
                  iconSize: 18,
                  // offset: Offset(12, 12),
                  dropdownDecoration: BoxDecoration(
                    // color: Colors.black45,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black45,
                    ),
                  ),

                  buttonDecoration: BoxDecoration(
                    // color: Colors.black45,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black45,
                    ),
                  ),
                  // iconEnabledColor: Colors.white,
                  // iconEnabledColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  value: selectedStatusValue,
                  onChanged: (value) {
                    setState(() {
                      selectedStatusValue = value;
                    });
                  },
                ),
                MyTextFormField_Web(
                  width: MediaQuery.of(context).size.width * 0.18,
                  hint: "Text Search",
                  kry: TextInputType.text,
                ),
                MyTextFormField_Web(
                  width: MediaQuery.of(context).size.width * 0.18,
                  hint: "Text Search",
                  kry: TextInputType.text,
                ),
                CustomDropdownButton2(
                  buttonHeight: 34,
                  buttonWidth: MediaQuery.of(context).size.width * 0.18,
                  dropdownWidth: MediaQuery.of(context).size.width * 0.18,
                  hint: 'Extended Search',
                  dropdownItems: extendedSearch,
                  iconSize: 18,
                  // offset: Offset(12, 12),
                  dropdownDecoration: BoxDecoration(
                    // color: Colors.black45,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black45,
                    ),
                  ),

                  buttonDecoration: BoxDecoration(
                    // color: Colors.black45,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black45,
                    ),
                  ),
                  // iconEnabledColor: Colors.white,
                  // iconEnabledColor: Colors.white,
                  icon: Icon(Icons.arrow_drop_down),
                  value: selectExtendedSearch,
                  onChanged: (value) {
                    setState(() {
                      selectExtendedSearch = value;
                      switch (value) {
                        case "Aml Search":
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Select Match Strength"),
                                          IconButton(
                                              icon: Icon(Icons.close),
                                              onPressed: () {
                                                Get.back(canPop: true);
                                              })
                                          // Icon(Icons.close),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      CustomDropdownButton2(
                                        buttonHeight: 34,
                                        buttonWidth:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        dropdownWidth:
                                            MediaQuery.of(context).size.width *
                                                0.18,
                                        hint: 'Extended Search',
                                        dropdownItems: extendedSearch,
                                        iconSize: 18,
                                        // offset: Offset(12, 12),
                                        dropdownDecoration: BoxDecoration(
                                          // color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Colors.black45,
                                          ),
                                        ),

                                        buttonDecoration: BoxDecoration(
                                          // color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Colors.black45,
                                          ),
                                        ),
                                        // iconEnabledColor: Colors.white,
                                        // iconEnabledColor: Colors.white,
                                        icon: Icon(Icons.arrow_drop_down),
                                        value: selectExtendedSearch,
                                        onChanged: (value) {
                                          setState(() {
                                            selectExtendedSearch = value;
                                          });
                                        },
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        width: double.infinity,
                                        child: RaisedButton(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10),
                                            color: Colors.blue,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            onPressed: () {},
                                            child: Text("Search")),
                                      ),
                                    ],
                                  ),
                                );
                              });
                          break;
                      }
                    });
                  },
                ),
                Icon(Icons.close, color: Colors.black),
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              child: PaginatedDataTable(
                // header: const Text('Nutrition'),
                rowsPerPage: _rowsPerPage,
                showCheckboxColumn: false,
                // headingRowHeight: 120,
                // headingRowHeight: 12,
                dragStartBehavior: DragStartBehavior.down,
                horizontalMargin: 20,
                availableRowsPerPage: const <int>[5, 10, 20],
                onRowsPerPageChanged: (int value) {
                  if (value != null) {
                    setState(() => _rowsPerPage = value);
                  }
                },
                columns: kTableColumns,
                source: DessertDataSource(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}
//
