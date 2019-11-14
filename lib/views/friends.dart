import 'package:flutter/material.dart';

class FriendView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          FriendsButtons(),
        ],
      ),
      color: Colors.blueGrey[50],
    );
  }
}

class FriendsButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Material(
              child: InkWell(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.person_add),
                      Text("Add New"),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                onTap: () {},
              ),
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Material(
              child: InkWell(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.offline_pin),
                      Text("Requests"),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                onTap: () {},
              ),
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Material(
              child: InkWell(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.rss_feed),
                      Text("Discover"),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                onTap: () {},
              ),
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Material(
              child: InkWell(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.group),
                      Text("Create Group"),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                ),
                onTap: () {},
              ),
              color: Colors.white,
            ),
          )
        ],
        direction: Axis.horizontal,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
