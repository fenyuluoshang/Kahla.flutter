import 'package:flutter/material.dart';
import 'package:kahla/componments/Line.dart';

/// the page of about Kahla
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            /// info
            Container(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Image.network(
                      "https://aiursoft.aiursoft.io/512x512.png",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Center(
                    child: Text(
                      "Kahla Flutter 0.0.1",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Make with Love By 纷羽 for Aiursoft Kahla",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  )
                ],
              ),
              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
            ),

            /// buttons
            Container(
              child: Column(
                children: <Widget>[
                  LineButton(
                    innerWidget: Row(
                      children: <Widget>[
                        Icon(
                          Icons.update,
                          color: Colors.blue,
                        ),
                        Container(
                          child: Text("Check for update"),
                          margin: EdgeInsets.only(left: 10),
                        )
                      ],
                    ),
                    isBtn: true,
                    borderAfter: true,
                    onTap: () {},
                  ),
                  LineButton(
                    innerWidget: Row(
                      children: <Widget>[
                        Icon(
                          Icons.book,
                          color: Colors.blue,
                        ),
                        Container(
                          child: Text("Update history"),
                          margin: EdgeInsets.only(left: 10),
                        )
                      ],
                    ),
                    isBtn: true,
                    borderAfter: true,
                    onTap: () {},
                  ),
                  LineButton(
                    innerWidget: Row(
                      children: <Widget>[
                        Icon(
                          Icons.library_books,
                          color: Colors.blue,
                        ),
                        Container(
                          child: Text("About Kahla"),
                          margin: EdgeInsets.only(left: 10),
                        )
                      ],
                    ),
                    isBtn: true,
                    borderAfter: true,
                    onTap: () {},
                  ),
                  LineButton(
                    innerWidget: Row(
                      children: <Widget>[
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        Container(
                          child: Text("Share Kahla App"),
                          margin: EdgeInsets.only(left: 10),
                        )
                      ],
                    ),
                    isBtn: true,
                    onTap: () {},
                  ),
                ],
              ),
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          ],
        ),
        color: Colors.blueGrey[50],
      ),
    );
  }
}
