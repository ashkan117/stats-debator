import 'package:flutter/material.dart';

//Assume th
class CustomTable extends StatelessWidget {
  //DataTableSource dataTableSource;
  List<String> columnNames;
  List<Map<String, dynamic>> json;
  String header;

  CustomTable({this.json, this.columnNames, this.header});
  @override
  Widget build(BuildContext context) {
    List<DataRow> rows;

    Map<dynamic, dynamic> sublist = new Map();
    rows = json.map((e) {
      List<DataCell> cells = [];
      e.values.forEach((value) {
        cells.add(DataCell(Text(value.toString())));
      });
      return DataRow(cells: cells);
    }).toList();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        dataRowHeight: 32,
        horizontalMargin: 12.0,
        columnSpacing: 8,
        columns: columnNames
            .map((String column) => DataColumn(label: Text(column)))
            .toList(),
        rows: rows,
      ),
    );
  }
}
