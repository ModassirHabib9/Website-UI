import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/Widgets/dataTable/forensics_datatable.dart';
import 'package:web_portfolio/Widgets/dataTable/my_datatable.dart';
import 'package:web_portfolio/Widgets/myTextField.dart';

class ForensicsTab extends StatefulWidget {
  ForensicsTab({Key key}) : super(key: key);

  @override
  State<ForensicsTab> createState() => _ForensicsTabState();
}

class _ForensicsTabState extends State<ForensicsTab> {
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // const Size(360, 690);
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.only(top: 20, left: 14),
                child:
                    Text('Forensic Analysis', style: TextStyle(fontSize: 30))),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: PaginatedDataTable(
                // header: const Text('Nutrition'),
                rowsPerPage: _rowsPerPage,
                showCheckboxColumn: false,
                // headingRowHeight: 120,
                onSelectAll: (val) {
                  print("object");
                },

                dragStartBehavior: DragStartBehavior.start,
                horizontalMargin: 20,
                availableRowsPerPage: const <int>[5, 10, 20],
                onRowsPerPageChanged: (int value) {
                  if (value != null) {
                    setState(() => _rowsPerPage = value);
                  }
                },
                columns: kTableColumns_Forensics,
                source: DessertDataSource_Forensics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
