import 'package:flutter/material.dart';

class Standings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("W"),
            Text("L"),
            Text("Win %"),
            Text("GB"),
            Text("Conf"),
            Text("Home"),
            Text("Away"),
            Text("L 10"),
            Text("Strk"),
          ],
        )
      ],
    );
  }
}
