import 'package:flutter/material.dart';
import 'package:stats_debator/components/custom_table.dart';

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

    return Column(
      children: <Widget>[
        Text("Lebron James"),
        Text("Picture Goes here"),
        Text("Recent Game"),
        CustomTable(row, first)
      ],
    );
  }
}
