// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:astu_comminuty/drawer_pages/naviget_drawer.dart';
import 'package:astu_comminuty/setting_page.dart';
import 'package:astu_comminuty/utils/colors.dart';
import 'package:astu_comminuty/views/call_list.dart';
import 'package:astu_comminuty/views/homePage.dart';
import 'package:astu_comminuty/views/notification.dart';
import 'package:astu_comminuty/views/people_list.dart';
import 'package:astu_comminuty/views/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> pages = [
    HomePage(),
    people_page(),
    call_list(),
    NotificationPage(),
    // setting_page()
    ProfilePage(),
  ];
  void _onChanged(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("astu community chat"),
          backgroundColor: Colors.black,
        ),
        drawer: navigationDrawer(),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: pages,
          controller: _pageController,
          onPageChanged: _onChanged,
        ),
        bottomNavigationBar: Container(
          color: bkgrdColor,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: bkgrdColor,
            unselectedItemColor: unSelectedIcon,
            selectedItemColor: selectedIcon,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.messenger,
                  ),
                  label: "messages"),
              BottomNavigationBarItem(icon: Icon(Icons.group), label: "groups"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.call), label: "callings"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: "notification"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "settings"),
            ],
          ),
        ));
  }
}
