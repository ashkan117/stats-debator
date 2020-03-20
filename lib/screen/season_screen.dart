import 'package:flutter/material.dart';
import 'package:stats_debator/components/custom_table.dart';
import 'package:stats_debator/models/season_data.dart';

class SeasonScreen extends StatelessWidget {
  List<dynamic> json;

  SeasonScreen({this.json});

  @override
  Widget build(BuildContext context) {
    return CustomTable(
      json: json,
      columnNames: SeasonData.columns,
      header: "Season Stats",
    );
  }
}
