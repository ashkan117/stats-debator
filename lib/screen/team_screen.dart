import 'package:flutter/material.dart';
import 'package:stats_debator/components/custom_table.dart';
import 'package:stats_debator/models/team_data.dart';

class TeamScreen extends StatelessWidget {
  List<TeamData> data;

  TeamScreen(this.data);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildTable(),
    );
  }

  Widget _buildTable() {
    if (data.length > 10) {
      return CustomTable(
        columnNames: TeamData.columns,
        dataTableSource: TeamDataSource(data),
        header: "Team Data",
      );
    } else {
      return DataTable(
        columns: TeamData.columns
            .map((columnString) => DataColumn(label: Text(columnString))),
        rows: data.map((row) => DataRow(cells: row.teamName)),
      );
    }
  }
}

class TeamDataSource extends DataTableSource {
  List<TeamData> data;
  TeamDataSource(this.data);

  @override
  DataRow getRow(int index) {
    final TeamData teamData = data[index];
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text(teamData.teamName.toString())),
      DataCell(Text(teamData.wins.toString())),
      DataCell(Text(teamData.losses.toString())),
      DataCell(Text(teamData.winPercentage.toString())),
      DataCell(Text(teamData.minutes.toString())),
      DataCell(Text(teamData.fgm.toString())),
      DataCell(Text(teamData.fga.toString())),
      DataCell(Text(teamData.fgPct.toString())),
      DataCell(Text(teamData.fg3M.toString())),
      DataCell(Text(teamData.fg3A.toString())),
      DataCell(Text(teamData.fg3Pct.toString())),
      DataCell(Text(teamData.ftm.toString())),
      DataCell(Text(teamData.fta.toString())),
      DataCell(Text(teamData.ftPct.toString())),
      DataCell(Text(teamData.oReb.toString())),
      DataCell(Text(teamData.dReb.toString())),
      DataCell(Text(teamData.reb.toString())),
      DataCell(Text(teamData.assist.toString())),
      DataCell(Text(teamData.turnovers.toString())),
      DataCell(Text(teamData.steals.toString())),
      DataCell(Text(teamData.blocks.toString())),
      DataCell(Text(teamData.blockAttempts.toString())),
      DataCell(Text(teamData.personalFouls.toString())),
      DataCell(Text(teamData.pfd.toString())),
      DataCell(Text(teamData.pts.toString())),
      DataCell(Text(teamData.plusMinus.toString())),
      DataCell(Text(teamData.gamesPlayedRank.toString()))
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
