import 'package:flutter/material.dart';
import 'package:stats_debator/components/custom_table.dart';
import 'package:stats_debator/models/player_data.dart';

class PlayerScreen extends StatelessWidget {
  dynamic json;

  PlayerScreen({this.json});
  @override
  Widget build(BuildContext context) {
//    List<PlayerData> data = [
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//      PlayerData(age: 35, points: 1350, gamesPlayed: 52),
//    ];

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 500,
            height: 200,
            child: ListView(
              children: <Widget>[
                Center(
                    child: Text(
                  'Player Stats',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                CustomTable(
                  columnNames: PlayerData.getCommonList(),
                  json: json,
                  header: "Player Stats",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PlayerDataSource extends DataTableSource {
  PlayerData data;
  PlayerDataSource(this.data);

  @override
  DataRow getRow(int index) {
    List<DataCell> cells = [];
    PlayerData.playerInfoMap.forEach((category, categoryResults) {
      categoryResults.forEach((item) {
        cells.add(data.json[item]);
      });
    });
    return DataRow(cells: cells);
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
