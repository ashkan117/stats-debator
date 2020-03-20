import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stats_debator/screen/season_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // controls the text label we use as a search bar
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder<http.Response>(
//          future: client
//              .getUrl(Uri.parse("http://172.28.172.226:8000/teams/Rockets")),
          //http://localhost:8000/players/regularSeasonInfo/chris paul
          future: http.get(
              "http://192.168.1.37:8000/players/regularSeasonInfo/Chris Paul"),
          builder:
              (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
            if (snapshot.hasData &&
                snapshot.connectionState != ConnectionState.waiting) {
              //Convert the json object into something more workable
              List<dynamic> value = jsonDecode(snapshot.data.body);
              var li = value.map((e) => e as Map<String, dynamic>).toList();

              return Scaffold(body: SeasonScreen(json: li));
            } else {
              return Scaffold(
                body: Container(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator()),
              );
            }
          }),
    );
  }
}
