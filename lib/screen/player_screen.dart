import 'package:flutter/material.dart';
import 'package:stats_debator/components/custom_table.dart';
import 'package:stats_debator/models/player_data.dart';

class PlayerScreen extends StatefulWidget {
  List<Map<String, dynamic>> json;

  PlayerScreen({this.json});

  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Player"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 500,
            height: 500,
            child: ListView(
              children: <Widget>[
                Center(
                    child: Text(
                  'Player Stats',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                CustomTable(
                  columnNames: PlayerData.getCommonList(),
                  json: widget.json,
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
