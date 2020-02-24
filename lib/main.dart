import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stats_debator/screen/player_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpClient client = new HttpClient();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
//          future: client
//              .getUrl(Uri.parse("http://172.28.172.226:8000/teams/Rockets")),
          future: http.get("http://172.28.172.226:8000/players/Chris/Paul"),
          builder:
              (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState != ConnectionState.waiting) {
              return PlayerScreen(json: jsonDecode(snapshot.data.body));
            } else {
              return Text("ERROR");
            }
          }),
    );
  }
}
