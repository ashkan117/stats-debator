import 'package:flutter/material.dart';
import 'package:stats_debator/models/player_data.dart';

class CustomTable extends StatelessWidget {
  DataTableSource dataTableSource;
  List<String> columnNames;
  dynamic json;
  String header;

  CustomTable({this.json, this.columnNames, this.dataTableSource, this.header});
  @override
  Widget build(BuildContext context) {
    List<DataCell> cells = [];
    Map<dynamic, dynamic> sublist = new Map();
    PlayerData.playerInfoMap.forEach((category, categoryResults) {
      categoryResults.forEach((item) {
        var someList = json[category];
        var els = (someList[0])[item];
        cells.add(DataCell(Text((someList[0])[item].toString())));
      });
    });
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: columnNames
            .map((String column) => DataColumn(label: Text(column)))
            .toList(),
        rows: [DataRow(cells: cells)],
      ),
    );
  }
}
