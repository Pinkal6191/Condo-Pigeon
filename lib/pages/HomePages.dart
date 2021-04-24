import 'package:condo_pigeon/pages/AccountSettingPage.dart';
import 'package:condo_pigeon/pages/AnnouncementsListPage.dart';
import 'package:condo_pigeon/pages/AppToolbar.dart';
import 'package:condo_pigeon/pages/PartyRoomListPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePages extends StatelessWidget {
  //const HomePages({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final List<String> titleList = ["Announcement", "Party Room", "Service Elevetor","Setting"];
  String currentTitle;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final _widgetOptions = [
    new AnnouncementsListPage(),
    new PartyRoomListPage(),
    new PartyRoomListPage(),
    new AccountSettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    currentTitle = titleList[_selectedIndex];
    return Scaffold(
      appBar: AppToolbar(context, currentTitle),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
       // showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_announcement.png")),
            label: 'Announcement',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_partyroom.png")),
            label: 'Party Room',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/ic_service_elevator.png")),
            label: 'Service Elevetor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }


}
