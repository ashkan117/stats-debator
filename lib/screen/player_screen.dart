import 'package:flutter/material.dart';
import 'package:stats_debator/components/custom_table.dart';
import 'package:stats_debator/models/player_data.dart';

class PlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> row = [
      "Rk",
      "G",
      "Date",
//      "Age",
//      "Tm",
//      "Opp",
//      "GS",
//      "MP",
//      "FG",
//      "FGA",
//      "FG%",
//      "3P",
//      "3PA",
//      "3P%",
//      "FT",
//      "FTA",
//      "FT%",
//      "ORB",
//      "DRB",
//      "TRB",
//      "AST",
//      "STL",
//      "BLK",
//      "TOV",
//      "PF",
//      "PTS",
//      "GmSc",
//      "+/"
    ];
    List<String> first = [
      "1",
      "1",
      "2019-10-22",
//      "34-296",
//      "LAL",
//      "@",
//      "LAC",
//      "L",
//      "(-10)",
//      "1",
//      "36:00",
//      "7",
//      "19",
//      ".368",
//      "1",
//      "5",
//      ".200",
//      "3",
//      "4",
//      ".750",
//      "1",
//      "9",
//      "10",
//      "8",
//      "1",
//      "1",
//      "5",
//      "3",
//      "18",
//      "11.6"
    ];

    List<PlayerData> data = [
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("Lebron James"),
        Text("Picture Goes here"),
        Text("Recent Game"),
        Container(
          width: 500,
          height: 200,
          child: SingleChildScrollView(
            child: CustomTable(
              columnNames: row,
              dataTableSource: PlayerDataSource(data),
              header: "Player Stats",
            ),
          ),
        )
      ],
    );
  }
}

class PlayerDataSource extends DataTableSource {
  List<PlayerData> data;
  PlayerDataSource(this.data);

  @override
  DataRow getRow(int index) {
    final PlayerData playerData = data[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(playerData.age.toString())),
      DataCell(Text(playerData.points.toString())),
      DataCell(Text(playerData.gamesPlayed.toString()))
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
