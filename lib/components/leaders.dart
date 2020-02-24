import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Leaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Table (
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        children: <Widget>[
//          new Text('')
//        ],
//      );
//    );

    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Table(
          children: [
            TableRow(children: [
              // DATA TO BE IMPORTED USING API
            ])
          ],
        ));
  }
}
