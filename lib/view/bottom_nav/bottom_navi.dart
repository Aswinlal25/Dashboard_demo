// ignore_for_file: library_private_types_in_public_api

import 'package:admin_app/util/colors.dart';
import 'package:admin_app/util/constants.dart';
import 'package:admin_app/view/chart/vectorchart_screen.dart';
import 'package:admin_app/view/home/overview_screen.dart';
import 'package:admin_app/view/profile/admin_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const OverviewScreen(),
    const ChartScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kblcak,
        automaticallyImplyLeading: false,
        title: const Text(
          'Dashboard',
          style: TextStyle(
              fontSize: 17,
              color: kwhite,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bell,
                    color: kwhite,
                  )),
              const Positioned(
                bottom: 20,
                right: 13,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
              )
            ],
          ),
          kw10
        ],
      ),
      backgroundColor: kblcak,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kblcak,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chart_bar), label: ''),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: kfwhite,
        onTap: _onItemTapped,
      ),
    );
  }
}
