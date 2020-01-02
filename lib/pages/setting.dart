import 'package:flutter/material.dart';
import 'package:kahla/componments/Line.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdvancedSettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advanved Setting"),
        centerTitle: true,
      ),
      // TODO: here is the page continue
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("Notification"),
            ),
            LineButton(
              isBtn: false,
              innerWidget: Row(
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                  Container(
                    child: Text("Server"),
                    margin: EdgeInsets.only(left: 10),
                  )
                ],
              ),
            ),
            Container(
              child: Text("Account"),
            ),
          ],
        ),
      ),
    );
  }
}
