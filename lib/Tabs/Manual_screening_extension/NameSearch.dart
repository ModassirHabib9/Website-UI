import 'package:country_list_pick/country_list_pick.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:web_portfolio/Widgets/MyDropDownMenu.dart';
import 'package:web_portfolio/Widgets/TimerField/date_picker_widget.dart';
import 'package:web_portfolio/Widgets/appbar2.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';
import 'package:web_portfolio/utils/constants.dart';

import '../../Widgets/customAppbar.dart';
import '../../Widgets/myCustomButton.dart';
import '../ForensicsTab.dart';
import '../ScreeningTab.dart';
import '../SettingTab.dart';

class NameSearchScreen extends StatefulWidget {
  const NameSearchScreen({Key key}) : super(key: key);

  @override
  State<NameSearchScreen> createState() => _NameSearchScreenState();
}

class _NameSearchScreenState extends State<NameSearchScreen> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
  int _rowsPerPage1 = PaginatedDataTable.defaultRowsPerPage;
  String countryValue = "";
  bool value = false;
  // String countryValue = "";
  String stateValue = "";
  String cityValue = "";
  String address = "";


  final _KTabViews = <Widget>[
    // DashboardTab(),
    ScreeningTab(),
    ForensicsTab(),
    // ManualScreeningTab(),
    SettingTab(),
  ];
  final List<String> statuss = [
    'Status',
    'Accepted',
    'Rejected',
  ];

  String selectedStatusValue;
  final Set<String> _ReligionsList = {'Enter value', 'Male', 'Female'};

  @override
  Widget build(BuildContext context) {
    GlobalKey<CSCPickerState> _cscPickerKey = GlobalKey();

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
                  'Quick Name Search',
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
                                            Text('Given Names *',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            MyTextFormField_Web(
                                              // width: MediaQuery.of(context).size.width *
                                              //     0.18,
                                              hint: "Given Names",
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
                                            Text('Surname *',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            MyTextFormField_Web(
                                              // width: MediaQuery.of(context).size.width *
                                              //     0.18,
                                              hint: "Surname *",
                                              kry: TextInputType.text,
                                            )
                                          ],
                                        ),
                                      ),
                                    ]),
                                SizedBox(height: 10),

                                /// 2nd Row ///////////////////////////////
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
                                            Text('Gender *',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            DropDownMenu(
                                                colour: Color(0xffE9EDED),
                                                // containerWidth: 276.w,
                                                containerHeight: 34,
                                                fontSized: 16.sp,
                                                hint: 'Enter Value',
                                                dropdownList: _ReligionsList),
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
                                            Text('Date of Birth *',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            DatePickerWidget2(),
                                            // MyTextFormField_Web(
                                            //   // width: MediaQuery.of(context).size.width *
                                            //   //     0.18,
                                            //   hint: "Date of Birth *",
                                            //   kry: TextInputType.text,
                                            // )
                                          ],
                                        ),
                                      ),
                                    ]),
                                SizedBox(height: 10),

                                /// 2nd Row ///////////////////////////////
                                /// 3rd Row ///////////////////////////////
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
                                            Text('Nationality *',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            Container(
                                              height: 34,
                                              alignment: Alignment.centerLeft,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  border: Border.all(
                                                      color: Colors.grey)),
                                              child: Container(
                                                alignment: Alignment.centerLeft,
                                                width: double.infinity,
                                                child: CountryListPick(
                                                    appBar: AppBar(
                                                      backgroundColor:
                                                          Colors.black,
                                                      centerTitle: false,
                                                      title: Text(
                                                          'Choose Your Country'),
                                                    ),

                                                    // if you need custome picker use this
                                                    // pickerBuilder: (context, CountryCode countryCode){
                                                    //   return Row(
                                                    //     children: [
                                                    //       Image.asset(
                                                    //         countryCode.flagUri,
                                                    //         package: 'country_list_pick',
                                                    //       ),
                                                    //       Text(countryCode.code),
                                                    //       Text(countryCode.dialCode),
                                                    //     ],
                                                    //   );
                                                    // },

                                                    // To disable option set to false
                                                    theme: CountryTheme(
                                                      isShowFlag: false,
                                                      isShowTitle: true,
                                                      isShowCode: false,
                                                      isDownIcon: true,
                                                      showEnglishName: true,
                                                    ),
                                                    // Set default value
                                                    // initialSelection: '+62',
                                                    // or
                                                    // initialSelection: 'US'
                                                    onChanged:
                                                        (CountryCode code) {
                                                      print(code.name);
                                                      print(code.code);
                                                      print(code.dialCode);
                                                      print(code.flagUri);
                                                    },
                                                    // Whether to allow the widget to set a custom UI overlay
                                                    useUiOverlay: true,
                                                    // Whether the country list should be wrapped in a SafeArea
                                                    useSafeArea: false),
                                              ),
                                            ),

                                            /*  MyTextFormField_Web(
                                              // width: MediaQuery.of(context).size.width *
                                              //     0.18,
                                              hint: "Nationality *",
                                              kry: TextInputType.text,
                                            ) */
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
                                            Text('External Id',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14)),
                                            SizedBox(height: 5),
                                            MyTextFormField_Web(
                                              // width: MediaQuery.of(context).size.width *
                                              //     0.18,
                                              hint: "External Id",
                                              kry: TextInputType.text,
                                            )
                                          ],
                                        ),
                                      ),
                                    ]),
                                SizedBox(height: 10),

                                /// 3rd Row ///////////////////////////////

                                SizedBox(height: 10),
                                MyCustomButton(
                                  width: double.infinity,
                                  text: "Search",
                                  onPressed: () {},
                                ),
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
              /*CSCPicker(
                key: _cscPickerKey,

                ///Enable disable state dropdown [OPTIONAL PARAMETER]
                defaultCountry: DefaultCountry.Pakistan,
                showStates: false,
                disableCountry: false,

                /// Enable disable city drop down [OPTIONAL PARAMETER]
                showCities: false,

                ///Enable (get flat with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                flagState: CountryFlag.SHOW_IN_DROP_DOWN_ONLY,

                ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300, width: 1)),

                ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                disabledDropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey.shade300,
                    border: Border.all(color: Colors.grey.shade300, width: 1)),

                ///selected item style [OPTIONAL PARAMETER]
                selectedItemStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                dropdownHeadingStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),

                ///DropdownDialog Item style [OPTIONAL PARAMETER]
                dropdownItemStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),

                ///Dialog box radius [OPTIONAL PARAMETER]
                dropdownDialogRadius: 10.0,

                ///Search bar radius [OPTIONAL PARAMETER]
                searchBarRadius: 10.0,

                ///triggers once country selected in dropdown
                onCountryChanged: (value) {
                  setState(() {
                    ///store value in country variable
                    countryValue = value;
                  });
                },
              ),*/

              ///    Table Data   //////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
