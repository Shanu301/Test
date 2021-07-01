import 'package:flutter/material.dart';

import 'Tabs/Home.dart';
import 'Tabs/Profile.dart';
import 'Tabs/Summary.dart';
import 'Tabs/Todo.dart';


class LandingScreen extends StatefulWidget {
  static const routeName = '/chats-screen';
  @override
  _LandingScreen createState() => _LandingScreen();
}

class _LandingScreen extends State<LandingScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Home(

    ),
    Todo(

    ),
    Summary(

    ),
    Profile(),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: kPrimaryColor,
      //   child: Icon(
      //     Icons.person_add_alt_1,
      //     color: Colors.white,
      //   ),
      // ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.orange,

      elevation: 4,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
        print("$value");
        print("$_selectedIndex");
      },
      items: [
        BottomNavigationBarItem(
           icon: Icon(Icons.home,color: Colors.black,), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined,color: Colors.black,), label: "To-do"),
        BottomNavigationBarItem(
            icon: Icon(Icons.timeline,color: Colors.black,), label: "Summary"),
        BottomNavigationBarItem(icon: Icon(Icons.accessibility,color: Colors.black,), label: "Profile"),

        // BottomNavigationBarItem(
        //   icon: CircleAvatar(
        //     radius: 14,
        //     backgroundImage: AssetImage("assets/images/user_2.png"),
        //   ),
        //   label: "Profile",
        // ),
      ],
    );
  }




}
