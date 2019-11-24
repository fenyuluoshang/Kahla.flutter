import 'package:flutter/material.dart';

/// Friends List Page in Navigater
class FriendView extends StatefulWidget {
  @override
  _FriendState createState() => _FriendState();
}

class _FriendState extends State<FriendView> {
  String searchInput = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          /// first group is the top-line buttons
          FriendsButtons(),
          Container(
            child: TextField(
              decoration: InputDecoration(labelText: "search"),
              onChanged: (text) {
                this.setState(() {
                  this.searchInput = text;
                });
              },
            ),
          )
        ],
      ),
      color: Colors.blueGrey[50],
    );
  }
}

/// the buttons of add frineds、 requests...
class FriendsButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        /// here is the top-line buttons for friend view
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Material(
              child: InkWell(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.person_add,
                        color: Colors.blue,
                      ),
                      Text(
                        "Add New",
                        style: TextStyle(color: Colors.blue),
                      ),
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
                      Icon(
                        Icons.offline_pin,
                        color: Colors.blue,
                      ),
                      Text(
                        "Requests",
                        style: TextStyle(color: Colors.blue),
                      ),
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
                      Icon(
                        Icons.rss_feed,
                        color: Colors.blue,
                      ),
                      Text(
                        "Discover",
                        style: TextStyle(color: Colors.blue),
                      ),
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
                      Icon(
                        Icons.group,
                        color: Colors.blue,
                      ),
                      Text(
                        "Create Group",
                        style: TextStyle(color: Colors.blue),
                      ),
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
