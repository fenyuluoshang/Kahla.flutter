import 'package:flutter/material.dart';
import 'package:kahla/views/friends.dart';
import 'package:kahla/views/kahla.dart';
import 'package:kahla/views/me.dart';

/// the type for router datas
class RouterData {
  String title;

  Icon icon;

  Icon actionIcon;

  Widget widget;

  RouterData({this.title, this.icon, this.actionIcon, this.widget});
}

/// the main function will start the app and the entry is the class named MyApp
void main() => runApp(MyApp());

/// app entry
class MyApp extends StatefulWidget {
  @override
  _APPState createState() => new _APPState();
}

class _APPState extends State<MyApp> {
  /// router data
  int _navigateSelectedIndex = 0;
  final List<RouterData> routerDataList = [
    RouterData(title: "Kahle", icon: Icon(Icons.chat), widget: KahlaView()),
    RouterData(title: "Friends", icon: Icon(Icons.group), widget: FriendView()),
    RouterData(title: "Me", icon: Icon(Icons.person), widget: MeView()),
  ];

  /// global config data

  @override
  Widget build(BuildContext context) {
    // Makeup the data to the Item
    List<BottomNavigationBarItem> navigateItems = [];

    routerDataList.forEach((item) {
      navigateItems.add(BottomNavigationBarItem(
          icon: item.icon,
          activeIcon: item.actionIcon,
          title: Text(item.title)));
    });

    return MaterialApp(
      title: 'Kahla',

      /// do not show the debug tag
      debugShowCheckedModeBanner: false,

      /// theme color default blue
      /// this version will without change theme , so there is a static color here
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(routerDataList[_navigateSelectedIndex].title),
          centerTitle: true,
        ),

        /// view entry
        body: routerDataList[_navigateSelectedIndex].widget,
        bottomNavigationBar: BottomNavigationBar(
          items: navigateItems,
          currentIndex: _navigateSelectedIndex,
          selectedItemColor: Colors.blue[600],

          /// navigater select
          onTap: (int index) {
            setState(() {
              _navigateSelectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
