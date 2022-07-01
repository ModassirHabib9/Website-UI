import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:permission_handler/permission_handler.dart';
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
import 'DocumentForensicAnalysis.dart';
import 'NameSearch.dart';
import 'email_verification.dart';

class DocumentScanScreen extends StatefulWidget {
  const DocumentScanScreen({Key key}) : super(key: key);

  @override
  State<DocumentScanScreen> createState() => _DocumentScanScreenState();
}

///////// dropdown menu /////////
List<String> _locations = [
  'LoginScreen(),',
  'LoginScreen()',
  'LoginScreen()',
  'LoginScreen()'
]; // Option 2
String _selectedLocation;

///////// dropdown menu /////////
class _DocumentScanScreenState extends State<DocumentScanScreen> {
  final _pictureController = TextEditingController();
  final picker = ImagePicker();
  File _imageFile;
  var obj;
  var pickedImage;

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
  ///// Appbar /////
  File _pickedImage;
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
  }

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
                  'Quick Document Scan',
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
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: InkWell(
                                        onTap: () {
                                          chooseImage();
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: double.infinity,
                                          height: 300,
                                          color: Colors.grey[300],
                                          child: _pickedImage == null
                                              ? Text("Upload Front Side*")
                                              : kIsWeb
                                                  ? Image.memory(
                                                      webImage,
                                                      fit: BoxFit.fill,
                                                    )
                                                  : Image.file(
                                                      _pickedImage,
                                                      fit: BoxFit.fill,
                                                    ),
                                        ),
                                      )),
                                      SizedBox(width: 10),
                                      Expanded(
                                          child: InkWell(
                                        onTap: () {
                                          chooseImage();
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: double.infinity,
                                          height: 300,
                                          color: Colors.grey[300],
                                          child: _pickedImage == null
                                              ? Text(
                                                  "Upload Back Side Id card*")
                                              : kIsWeb
                                                  ? Image.memory(
                                                      webImage,
                                                      fit: BoxFit.fill,
                                                    )
                                                  : Image.file(
                                                      _pickedImage,
                                                      fit: BoxFit.fill,
                                                    ),
                                        ),
                                      )),
                                    ]),
                                SizedBox(height: 10),

                                /// 3rd Row ///////////////////////////////

                                SizedBox(height: 10),
                                Text("Internal Id"),
                                MyTextFormField_Web(
                                  hint: 'Enter Internal Id',
                                  kry: TextInputType.text,
                                ),
                                SizedBox(height: 10),
                                MyCustomButton(
                                  width: double.infinity,
                                  text: "Search",
                                  onPressed: () {
                                    /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RegistrationScreen()));*/
                                  },
                                ),
                                /* Container(
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
                                    child: Text('Search'),
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
                              Text('Quick Document Scan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16)),
                              SizedBox(height: 10),
                              Text(
                                  'Use GlobalCompliance to perform a quick check of any individuals ID. Individual´s full name will be automatically extracted from the provided identity document. You will receive a notification if they appear in the database or if they have a criminal record.',
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
