import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:web_portfolio/Tabs/screens/ScreeningReportScreen.dart';

////// Columns in table.
const kTableColumns = <DataColumn>[
  DataColumn(
    // numeric: true,
    label: Text('Name',
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
    label: Text('External Id',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
  DataColumn(
    label: Text('Document Number',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
  DataColumn(
    label: Text('Nationality',
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
    tooltip: 'The amount',
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
  Dessert(this.name, this.calories, this.fat, this.carbs, this.protein,
      this.sodium, this.calcium, this.iron);
  final Widget name;
  final String calories;
  final String fat;
  final String carbs;
  final String protein;
  final Widget sodium;
  final String calcium;
  final String iron;
  bool selected = false;
}

////// Data source class for obtaining row data for PaginatedDataTable.
class DessertDataSource extends DataTableSource {
  int _selectedCount = 22;

  final List<Dessert> _desserts = <Dessert>[
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
    Dessert(
        Row(
          children: [
            Icon(Icons.text_snippet, color: Colors.blue),
            Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
          ],
        ),
        "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
        'TriTech',
        "Lothar Hohmann",
        "DEU",
        Text("Manual Screening",
            style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                backgroundColor: Color(0xFF6C757D))),
        "12/19/2021, 5:51:0",
        "USA"),
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
          assert(_selectedCount >= 0);
          dessert.selected = value;
          notifyListeners();
        }
      },
      cells: <DataCell>[
        DataCell(dessert.name, onTap: () {
          Get.to(ScreeningReportDetailsScreen());
        }),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text(dessert.fat)),
        DataCell(Text('${dessert.carbs}')),
        DataCell(Text(dessert.protein)),
        DataCell(dessert.sodium),
        DataCell(Text('${dessert.calcium}')),
        DataCell(Text('${dessert.iron}%')),
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
