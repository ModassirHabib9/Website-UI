import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:web_portfolio/Widgets/custom_dropdown.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';
import 'package:web_portfolio/utils/constants.dart';

import '../Widgets/myCustomButton.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({Key key}) : super(key: key);

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  bool _isChecked = false;
  final List<String> statuss = [
    'Status',
    'Accepted',
    'Rejected',
  ];
  String selectedStatusValue;
  final List<String> statuss1 = [
    'Auto',
    'Manual Review',
  ];
  String selectedStatusValue1;
  final List<String> statuss2 = [
    'Select',
    'Exack(>=95%)',
    'Strong(<95% and >=93%)',
  ];
  String selectedStatusValue2;
  final List<String> statuss3 = ['Auto', 'Manual Review'];
  String selectedStatusValue3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      'Swiss AMF AG Settings',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MyTextFormField_Web(
                          width: MediaQuery.of(context).size.width * 0.16,
                          hint: "Assign to company",
                          kry: TextInputType.text,
                        ),
                        SizedBox(width: 6),
                        MyCustomButton(
                          text: "Save",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            ///   Start Default Screening Settings  /////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Default Screening Settings',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 10),
                          Container(
                            alignment: Alignment.center,
                            height: 100,
                            child: GridView.count(
                                crossAxisCount: 2,
                                childAspectRatio: 1.0,
                                padding: const EdgeInsets.all(4.0),
                                // mainAxisSpacing: 4.0,
                                physics: const NeverScrollableScrollPhysics(),
                                crossAxisSpacing: 4.0,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('ID Verification 3 Credits',
                                          style: TextStyle(),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Switch(
                                              onChanged: (bool value) {
                                                setState(() {
                                                  _isChecked = value;
                                                });
                                              },
                                              value: _isChecked),
                                          Text(_isChecked ? 'On' : 'Off'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'AML / OFAC / PEP Screening 2 Credits',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Switch(
                                              onChanged: (bool value) {
                                                setState(() {
                                                  _isChecked = value;
                                                });
                                              },
                                              value: _isChecked),
                                          Text(_isChecked ? 'On' : 'Off'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    color: Colors.grey[100],
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(height: 20),
                          Text('    Default Screening Cost',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 10),
                          Text('7',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 10),
                          Text('CREDITS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 20),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            ///   Start Widget Settings  /////
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Widget Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Countries Blacklist',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 34,
                                            alignment: Alignment.centerLeft,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: CountryListPick(
                                                appBar: AppBar(
                                                  backgroundColor: Colors.black,
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
                                                onChanged: (CountryCode code) {
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
                                          Text('Nationalities Blacklist',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 34,
                                            alignment: Alignment.centerLeft,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: CountryListPick(
                                                appBar: AppBar(
                                                  backgroundColor: Colors.black,
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
                                                onChanged: (CountryCode code) {
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
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Minimal Age in Years',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          MyTextFormField_Web(
                                            // width: MediaQuery.of(context).size.width *
                                            //     0.18,
                                            hint: "Minimal Age in Years",
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
                                          Text(
                                              'Allow Video Upload for Biometric Analysis',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Switch(
                                                  onChanged: (bool value) {
                                                    setState(() {
                                                      _isChecked = value;
                                                    });
                                                  },
                                                  value: _isChecked),
                                              Text(_isChecked ? 'On' : 'Off'),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Id Card Countries Blacklist',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 34,
                                            alignment: Alignment.centerLeft,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: CountryListPick(
                                                appBar: AppBar(
                                                  backgroundColor: Colors.black,
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
                                                onChanged: (CountryCode code) {
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
                                          Text(
                                              'Driving License Countries Whitelist',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          Container(
                                            height: 34,
                                            alignment: Alignment.centerLeft,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: CountryListPick(
                                                appBar: AppBar(
                                                  backgroundColor: Colors.black,
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
                                                onChanged: (CountryCode code) {
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
                                        ],
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ))
                ]),
            SizedBox(height: 20),

            ///   Start Auto Reject Settings  /////
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Auto Reject Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('AML / OFAC / PEP Matches',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          CustumDropDown(
                                            btnHeight: 34,
                                            dropdownItems: statuss,
                                            value: selectedStatusValue,
                                            onChanged: (val) {
                                              setState(() {
                                                selectedStatusValue = val;
                                              });
                                            },
                                          )
                                          // MyTextFormField_Web(
                                          //   // width: MediaQuery.of(context).size.width *
                                          //   //     0.18,
                                          //   hint: "Countries Blacklist",
                                          //   kry: TextInputType.text,
                                          // )
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
                                          Text(
                                              'AML / OFAC / PEP Uncertainty Handling',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          CustumDropDown(
                                            btnHeight: 34,
                                            dropdownItems: statuss1,
                                            value: selectedStatusValue1,
                                            onChanged: (val) {
                                              setState(() {
                                                selectedStatusValue1 = val;
                                              });
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              'ID Document Months Before Expiry',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          MyTextFormField_Web(
                                            // width: MediaQuery.of(context)
                                            //         .size
                                            //         .width *
                                            //     0.18,
                                            hint: "Countries Blacklist",
                                            kry: TextInputType.text,
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ))
                ]),
            SizedBox(height: 20),

            ///   Start Auto Accept: High Risk Settings  /////

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Auto Reject Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('AML / OFAC / PEP Matches',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          CustumDropDown(
                                            btnHeight: 34,
                                            dropdownItems: statuss2,
                                            value: selectedStatusValue2,
                                            onChanged: (val) {
                                              setState(() {
                                                selectedStatusValue2 = val;
                                              });
                                            },
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
                                          Text(
                                              'AML / OFAC / PEP Uncertainty Handling',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          CustumDropDown(
                                            btnHeight: 34,
                                            dropdownItems: statuss3,
                                            value: selectedStatusValue3,
                                            onChanged: (val) {
                                              setState(() {
                                                selectedStatusValue3 = val;
                                              });
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('AML / OFAC / PEP Matches',
                                              style: TextStyle(fontSize: 14)),
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
                                          Text(
                                              'AML / OFAC / PEP Uncertainty Handling',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          MyTextFormField_Web(
                                            // width: MediaQuery.of(context).size.width *
                                            //     0.18,
                                            hint: "ID Verification",
                                            kry: TextInputType.text,
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ))
                ]),
            SizedBox(height: 20),

            ///   Start Auto Accept: Medium Risk Settings  /////
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Auto Accept: Medium Risk Settings',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('AML / OFAC / PEP Matches',
                                              style: TextStyle(fontSize: 14)),
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
                                          Text(
                                              'AML / OFAC / PEP Uncertainty Handling',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          MyTextFormField_Web(
                                            // width: MediaQuery.of(context).size.width *
                                            //     0.18,
                                            hint: "ID Verification",
                                            kry: TextInputType.text,
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                              SizedBox(height: 10),
                              Divider(),
                              SizedBox(height: 10),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('AML / OFAC / PEP Matches',
                                              style: TextStyle(fontSize: 14)),
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
                                          Text(
                                              'AML / OFAC / PEP Uncertainty Handling',
                                              style: TextStyle(fontSize: 14)),
                                          SizedBox(height: 5),
                                          MyTextFormField_Web(
                                            // width: MediaQuery.of(context).size.width *
                                            //     0.18,
                                            hint: "ID Verification",
                                            kry: TextInputType.text,
                                          )
                                        ],
                                      ),
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ))
                ]),
            SizedBox(height: 20),

            Container(
              width: double.infinity,
              child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Auto Accept: Low Risk Settings',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          SizedBox(height: 20),
                          Text(
                              'All screenings that do not match any criteria defined above will be set as "Low" risk level.',
                              style: TextStyle(fontSize: 12)),
                        ]),
                  )),
            ),
            SizedBox(height: 20),

            Container(
              width: double.infinity,
              child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Credential Managment',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                            ]),
                        RaisedButton(
                            color: blueCustom,
                            onPressed: () {},
                            child: Text("Create New"))
                      ],
                    ),
                  )),
            )

            ///   Start Auto Accept: Low Risk Settings  /////
          ],
        ),
      ),
    );
  }
}
