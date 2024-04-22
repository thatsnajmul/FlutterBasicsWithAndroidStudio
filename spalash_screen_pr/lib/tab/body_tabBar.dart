import 'package:flutter/material.dart';
import 'package:spalash_screen_pr/bottom_tab_bar/bottom_nav_bar.dart';
import 'package:spalash_screen_pr/tab/first_tab.dart';
import 'package:spalash_screen_pr/tab/second_tab.dart';
import 'package:spalash_screen_pr/tab/third_tab.dart';

class AppTabbar extends StatefulWidget {
  const AppTabbar({Key? key}) : super(key: key);

  @override
  State<AppTabbar> createState() => _AppTabbarState();
}

class _AppTabbarState extends State<AppTabbar> {

  final List country=[
    {
      'name':'Nahid',
      'Account_id':'1'
    },
    {

    },
  ];

  @override
  Widget build(BuildContext context) {
    return BottomTabBar();
    return DefaultTabController(length: 3, child: Scaffold(

      drawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset('assets/images/spla.jpg'),
                ),

                Positioned(
                  top: 60,
                    left: 150,
                    child: CircleAvatar(
                  backgroundImage: AssetImage('assests/images/najmul.jpeg'),
                ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Text(
                   'App Development', style: TextStyle(
                    color: Colors.black,fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            ),

            Card(
              child: (
                  ListTile(
                    leading: Text('H'),
                    title: Text('Home'),
                    trailing: Icon(Icons.home),
                  )
              ),
            ),
            Card(
              child: (
                  ListTile(
                    leading: Text('About'),
                    title: Text('Islam'),
                    trailing: Icon(Icons.call),
                  )
              ),
            ),
            Card(
              child: (
                  ListTile(
                    leading: Text('Najmul'),
                    title: Text('Islam'),
                    trailing: Icon(Icons.call),
                  )
              ),
            ),
            Card(
              child: (
                  ListTile(
                    leading: Text('Najmul'),
                    title: Text('Islam'),
                    trailing: Icon(Icons.call),
                  )
              ),
            ),
            Card(
              child: (
                  ListTile(
                    leading: Text('Najmul'),
                    title: Text('Islam'),
                    trailing: Icon(Icons.call),
                  )
              ),
            ),
            Card(
              child: (
                  ListTile(
                    leading: Text('Najmul'),
                    title: Text('Islam'),
                    trailing: Icon(Icons.call),
                  )
              ),
            ),
            Card(
              child: (
                  ListTile(
                    leading: Text('Najmul'),
                    title: Text('Islam'),
                    trailing: Icon(Icons.call),
                  )
              ),
            ),


          ],
        ),
      ),

      appBar: AppBar(
        title: Center(child: Text('My Demo App')),
        bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.lightGreenAccent,

          tabs: [
            Tab(icon: Icon(Icons.home, size:30,), text: ('Home'),),
            Tab(icon: Icon(Icons.chat, size:30,),text: ('Chat'),),
            Tab(icon: Icon(Icons.notifications,size:30,),text: ('Notification'),),
          ],
        ),
      ),

      body: TabBarView(
        children: [
          FirstTab(),
          SecondTab(),
          ThirdTab(),
        ],
      ),

    ),
    );

  }
}
