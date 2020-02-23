import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  List<String> data;
  List<String> row;

  CustomTable(this.row, this.data);
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns:
          row.map((String column) => DataColumn(label: Text(column))).toList(),
      rows: [
        DataRow(
            cells:
                data.map((String rowInfo) => DataCell(Text(rowInfo))).toList())
      ],
    );
  }
}
