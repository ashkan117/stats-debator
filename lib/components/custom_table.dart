import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  DataTableSource dataTableSource;
  List<String> columnNames;
  String header;

  CustomTable({this.columnNames, this.dataTableSource, this.header});
  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      rowsPerPage: 10,
      header: Text(this.header),
      columns: columnNames
          .map((String column) => DataColumn(label: Text(column)))
          .toList(),
      source: dataTableSource,
    );
  }
}
