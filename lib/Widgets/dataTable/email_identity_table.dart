import 'package:flutter/material.dart';
import 'package:web_portfolio/Tabs/Auth/login.dart';

////// Columns in table.
const emailIdentity_kTableColumns = <DataColumn>[
  DataColumn(
    // numeric: true,
    label: Text('Screening Token',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
  ),
  DataColumn(
    label: Text('Name',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    tooltip: 'Email',
    // numeric: true,
  ),
  DataColumn(
    label: Text('Completed',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
  DataColumn(
    label: Text('Update Requested',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black)),
    // numeric: true,
  ),
  DataColumn(
    label: Text('Link Opened',
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
    tooltip: 'The amount',
    // numeric: true,
  ),
];

////// Data class.
class Dessert_Email_Identity {
  Dessert_Email_Identity(
    this.name,
    this.calories,
    this.fat,
    this.carbs,
    this.protein,
    this.sodium,
    this.calcium,
    /*this.iron*/
  );
  final Widget name;
  final String calories;
  final String fat;
  final String carbs;
  final String protein;
  final Widget sodium;
  final String calcium;
  // final String iron;
  bool selected = false;
}

////// Data source class for obtaining row data for PaginatedDataTable.
class DessertDataSource_EmailIdentity extends DataTableSource {
  int _selectedCount = 0;

  final List<Dessert_Email_Identity> _desserts = <Dessert_Email_Identity>[
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
    Dessert_Email_Identity(
      Text('efa2356b-e0a8-49...' /* , style: TextStyle(color: Colors.blue) */),
      "John Deo",
      'modassirhabib9@g...',
      "Lothar Hohmann",
      "Not Opened",
      Text("6/13/2022, 10:42:36 PM"),
      "Test Company",
    ),
  ];

  @override
  DataRow getRow(int index) {
    assert(index >= 0);
    if (index >= _desserts.length) return null;
    final Dessert_Email_Identity dessert = _desserts[index];
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
        DataCell(dessert.name, onTap: () {}),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text(dessert.fat)),
        DataCell(Text('${dessert.carbs}')),
        DataCell(Text(dessert.protein)),
        DataCell(dessert.sodium),
        DataCell(Text('${dessert.calcium}')),
        // DataCell(Text('${dessert.iron}%')),
      ],
    );
  }

  // BuildContext context;
  @override
  int get rowCount => _desserts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;
}
