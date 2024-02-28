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
   
  ];

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: [
              Image.asset(
                "assets/ds.png",
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
              ),
              Image.asset(
                "assets/diu.png",
                height: 100,
                width: 100,
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/notification.gif",
                  scale: 2,
                ),
              )
            ],
          )),
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
