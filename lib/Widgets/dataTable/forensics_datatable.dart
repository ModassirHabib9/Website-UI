import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/Tabs/Auth/registeration.dart';
import 'package:web_portfolio/Tabs/screens/ScreeningReportScreen.dart';

////// Columns in table.
const kTableColumns_Forensics = <DataColumn>[
  DataColumn(
    // numeric: true,
    label: Text('Id',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
  ),
  DataColumn(
    label: Text('Screening Token',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    tooltip: 'The total amount.',
    // numeric: true,
  ),
  DataColumn(
    label: Text('Tag',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
  DataColumn(
    label: Text('Status',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
  DataColumn(
    label: Text('Created',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
  DataColumn(
    label: Text('Company',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
];

////// Data class.
class Dessert {
  Dessert(
    this.name,
    this.calories,
    this.fat,
    this.carbs,
    this.protein,
    this.sodium,
    /*this.calcium, this.iron*/
  );
  final Widget name;
  final String calories;
  final String fat;
  final Widget carbs;
  final String protein;
  final Widget sodium;
  /*final String calcium;
  final String iron;*/
  bool selected = false;
}

////// Data source class for obtaining row data for PaginatedDataTable.
class DessertDataSource_Forensics extends DataTableSource {
  List screenList = [ScreeningReportDetailsScreen(), RegistrationScreen()];
  int _selectedCount = 0;

  final List<Dessert> _desserts = <Dessert>[
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
    Dessert(
      Row(
        children: [
          Icon(Icons.text_snippet, color: Colors.blue),
          Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
        ],
      ),
      "bdd68c1b-1919-4f9e-b0e0.....",
      'Software Engineer',
      Text("Processing",
          style: TextStyle(fontSize: 10, backgroundColor: Colors.grey[200])),
      "6/16/2022, 10:47:34 PM",
      Text("Test Company"),
      /*"12/19/2021, 5:51:0",
        "USA"*/
    ),
  ];

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _desserts.length) return null;
    final Dessert dessert = _desserts[index];
    return DataRow.byIndex(
      index: index,
      selected: dessert.selected,
      onSelectChanged: (bool value) {
        if (value == null) return;
        if (dessert.selected != value) {
          _selectedCount += value ? 1 : -1;
          // assert(_selectedCount >= 0);
          dessert.selected = value;

          // Get.to(screenList[index]);
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          notifyListeners();
        }
      },
      cells: <DataCell>[
        DataCell(dessert.name, onTap: () {
          Get.to(screenList[index]);
        }),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text(dessert.fat)),
        DataCell(dessert.carbs),
        DataCell(Text(dessert.protein)),
        DataCell(dessert.sodium),
        /*DataCell(Text('${dessert.calcium}')),
        DataCell(Text('${dessert.iron}%')),*/
      ],
    );
  }

  @override
  int get rowCount => _desserts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
