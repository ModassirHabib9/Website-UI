import 'package:flutter/material.dart';

////// Columns in table.
const kTableColumns2 = <DataColumn>[
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
    label: Text('Tags',
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
  // DataColumn(
  //   label: Text('Created',
  //       style: TextStyle(
  //           fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
  //   tooltip: 'The amount',
  //   // numeric: true,
  // ),
  // DataColumn(
  //   label: Text('Company',
  //       style: TextStyle(
  //           fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
  //   // numeric: true,
  // ),
];

////// Data class.
class Dessert2 {
  Dessert2(
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
  final String carbs;
  final String protein;
  final Widget sodium;
  // final String calcium;
  // final String iron;
  bool selected = false;
}

////// Data source class for obtaining row data for PaginatedDataTable.
class DessertDataSource2 extends DataTableSource {
  int _selectedCount = 0;

  final List<Dessert2> _desserts = <Dessert2>[
    Dessert2(
      Text('Frozen yogurt', style: TextStyle(color: Colors.blue)),
      "bdd68c1b-1919-4f9e-b0e0-f9b9c3c9f8f9",
      'snas',
      "Lothar Hohmann",
      "DEU",
      Text("Manual Screening", style: TextStyle(backgroundColor: Colors.grey)),
      // "12/19/2021, 5:51:0",
      /*"USA"*/
    ),
  ];

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _desserts.length) return null;
    final Dessert2 dessert = _desserts[index];
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
        DataCell(dessert.name),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text(dessert.fat)),
        DataCell(Text('${dessert.carbs}')),
        DataCell(Text(dessert.protein)),
        DataCell(dessert.sodium),
        // DataCell(Text('${dessert.calcium}')),
        // DataCell(Text('${dessert.iron}%')),
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
