import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spalash_screen_pr/tab/first_tab.dart';
import 'package:spalash_screen_pr/tab/second_tab.dart';
import 'package:spalash_screen_pr/tab/third_tab.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  final page =[
    FirstTab(),
    SecondTab(),
    ThirdTab(),
  ];

  var _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightGreenAccent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airport_shuttle_rounded,
              color: const Color(0xFF2BAD93),
            size: 30,),
            label: 'Ambulance',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: const Color(0xFF2BAD93),
              size: 30,),
            label: 'Ambulance',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_fire_department,
              color: const Color(0xFF2BAD93),
              size: 30,),
            label: 'Ambulance',
          ),
        ],

        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

      ),

      body: page[_currentIndex],
    )
    );
  }
}
