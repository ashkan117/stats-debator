import 'package:flutter/material.dart';
import 'package:stats_debator/screen/player_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: PlayerScreen(),
      ),
    );
  }
}
