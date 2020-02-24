import 'package:flutter/material.dart';
import 'package:stats_debator/components/custom_table.dart';
import 'package:stats_debator/models/standings_data.dart';

class StandingsDataSource extends DataTableSource {
  List<StandingsData> data;
  StandingsDataSource(this.data);

  @override
  DataRow getRow(int index) {
    final StandingsData standingData = data[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(standingData.wins.toString())),
      DataCell(Text(standingData.loss.toString())),
      DataCell(Text(standingData.winPercentage.toString()))
    ]);
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}

class Standings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> column = [
      "W",
      "L",
      "Win %",
//      "GB",
//      "Conf",
//      "Home",
//      "Away",
//      "L 10",
//      "Strk"
    ];
    //      "10",
    //      "1",
    //      "100",
    //      "-",
    //      "10-1",
    //      "10-0",
    //      "0-1",
    //      "9-1",
    //      "9"
    List<StandingsData> rows = [
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
      StandingsData(winPercentage: 1.00, wins: 10, loss: 1),
    ];
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: 500,
            height: 300,
            child: SingleChildScrollView(
              child: CustomTable(
                columnNames: column,
                dataTableSource: StandingsDataSource(rows),
                header: "Standings",
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 200,
                height: 300,
                child: SingleChildScrollView(
                  child: CustomTable(
                    columnNames: column,
                    dataTableSource: StandingsDataSource(rows),
                    header: "Standings",
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 300,
                child: SingleChildScrollView(
                  child: CustomTable(
                    columnNames: column,
                    dataTableSource: StandingsDataSource(rows),
                    header: "Standings",
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
