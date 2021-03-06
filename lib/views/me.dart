import 'package:flutter/material.dart';
import 'package:kahla/componments/Line.dart';
import 'package:kahla/pages/Login.dart';
import 'package:kahla/pages/about.dart';
import 'package:kahla/pages/profile.dart';
import 'package:kahla/pages/setting.dart';

/// The Me View is the content for the page Me
class MeView extends StatefulWidget {
  @override
  __MeViewState createState() => __MeViewState();
}

class __MeViewState extends State<MeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          /// myinfo componment will show user info in the page
          MyInfo(
            headimg: Image.network(
              "https://aiursoft.aiursoft.io/512x512.png",
              width: 100,
              height: 100,
            ),
            name: "纷羽",
            sign: "初学flutter ing",
            mail: "gzj0078@gmail.com",
            mailTags: <__MyInfoTagsData>[
              __MyInfoTagsData(
                  backgroundColor: Colors.green[700],
                  text: "Verified",
                  textColor: Colors.white),
              __MyInfoTagsData(
                  backgroundColor: Colors.blue[700],
                  text: "Public",
                  textColor: Colors.white),
            ],
          ),
          MenusInMe(),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: RaisedButton(
              child: Text("Sign in"),
              textColor: Colors.white,
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: RaisedButton(
              child: Text("Sign out"),
              textColor: Colors.white,
              color: Colors.redAccent,
              onPressed: () {},
            ),
          )
        ],
      ),
      color: Colors.blueGrey[50],
    );
  }
}

/// the data for tags
class __MyInfoTagsData {
  final Color backgroundColor;
  final String text;
  final Color textColor;

  __MyInfoTagsData({this.backgroundColor, this.text, this.textColor});
}

/// the componment for the page "Me" and show the userinfo datas
class MyInfo extends StatelessWidget {
  final Image headimg;

  final String name;

  final String sign;

  final String mail;

  final List<__MyInfoTagsData> mailTags;

  MyInfo({this.headimg, this.name, this.sign, this.mail, this.mailTags});

  @override
  Widget build(BuildContext context) {
    /// the row for email
    var emailRow = <Widget>[
      Text(mail),
    ];

    mailTags.forEach((f) {
      /// make the tags into the email row
      emailRow.add(Container(
        child: Text(
          f.text,
          style: TextStyle(color: f.textColor),
        ),
        decoration: BoxDecoration(
          color: f.backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: f.backgroundColor),
        ),
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.only(left: 3),
      ));
    });

    /// background white
    return Container(
      child: Material(
        /// tap anime
        child: InkWell(
          /// this container is make a padding for the componment
          child: Container(
            child: Row(
              children: <Widget>[
                /// headimage will inner here
                headimg,
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(sign),
                      Row(children: emailRow)
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                )
              ],
            ),
            padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilePage()));
          },
        ),
        color: Colors.white,
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
    );
  }
}

/// the menu in me view after the user info
class MenusInMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          /// Advanced Setting Button
          LineButton(
            isBtn: true,
            innerWidget: Row(
              children: <Widget>[
                Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                Container(
                  child: Text("Advanced Setting"),
                  margin: EdgeInsets.only(left: 10),
                )
              ],
            ),
            backgroundColor: Colors.white,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AdvancedSettingPage()));
            },
            borderAfter: true,
          ),

          /// About Setting Button
          LineButton(
            isBtn: true,
            innerWidget: Row(
              children: <Widget>[
                Icon(
                  Icons.bookmark,
                  color: Colors.blue,
                ),
                Container(
                  child: Text("About Kahla"),
                  margin: EdgeInsets.only(left: 10),
                )
              ],
            ),
            backgroundColor: Colors.white,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutPage()));
            },
            borderAfter: false,
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
      margin: EdgeInsets.only(top: 20),
    );
  }
}
