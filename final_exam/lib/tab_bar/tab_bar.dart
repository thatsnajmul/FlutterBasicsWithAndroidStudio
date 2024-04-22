import 'package:flutter/material.dart';

// function to trigger the app build
void main() {
  runApp(const TabBarDemo());
}

// class to build the app
class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home_rounded, color: Colors.amberAccent,)),
                Tab(icon: Icon(Icons.camera_alt)),
                Tab(icon: Icon(Icons.grade)),
                Tab(icon: Icon(Icons.email)),
              ],
            ), // TabBar
            title: const Text('TabBar View'),
            backgroundColor: Colors.green,
          ), // AppBar
          body: const TabBarView(
            children: [
              Center(child: Text('Wellcome To HomePage', style: (TextStyle(color: Colors.amber)))),
              Icon(Icons.camera_alt),
              Icon(Icons.grade),
              Icon(Icons.email),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}
