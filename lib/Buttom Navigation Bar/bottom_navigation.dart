import 'package:ds_lab/Sigin%20In%20Page/Sigin_in_Profile.dart';
import 'package:ds_lab/Sigin%20In%20Page/Sigin_up_Profile.dart';
import 'package:flutter/material.dart';
import 'club.dart';
import 'event.dart';
import 'home.dart';
import 'menu.dart';
import 'profile.dart';

class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key, required String title});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  int selectedTab = 0;
  final List pages = const [
    HomePage(),
    EventPage(),
    MenuPage(),
    ClubPage(),
    ProfilePage(),
    SiginUp(),
    SigininPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/ds.png",
                    scale: 5,
                    height: 100,
                    width: 100,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/diu.png",
                        scale: 5,
                        height: 100,
                        width: 100,
                      ),
                      Image.asset(
                        "assets/notification.gif",
                        scale: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: selectedTab,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 32, 72, 149),
          onTap: (index) {
            setState(() {
              selectedTab = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.event), label: "Event"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "DS Club"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ]),
    );
  }
}
