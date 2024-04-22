import 'package:flutter/material.dart';
import 'package:spalash_screen_pr/tab/second_tab.dart';
import 'package:spalash_screen_pr/tab/third_tab.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> with SingleTickerProviderStateMixin {

  late TabController _tabController=TabController(length: 3, vsync: this);

  final alphabet=['A','B','C','D','E'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:

      /*GridView.count(
            crossAxisCount: 2,
          children:List.generate(20, (index) => Text('Hello $index'))

        ),*/

      /*GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          //crossAxisSpacing: 10,
          children: [
            Container(
          height: 100,
          width: 100,
          color: Colors.redAccent,
              child: Center(child: Text('A', style: TextStyle(fontSize: 100),)),
      ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.greenAccent,
            ),
        ],

      )*/

      GridView.count(
            crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(alphabet.length, (index) => Container(
            height: 100,
            width: 100,
            color: Colors.greenAccent,
            child: Center(child: Text(alphabet[index],style: TextStyle(fontSize: 100),)),
          )),
      )

    );
      /*body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 500,
            color: Colors.red,
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 500,
            color: Colors.red,
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 500,
            color: Colors.red,
          ),


          TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.lightGreenAccent,

            tabs: [
              Tab(icon: Icon(Icons.home, size:30,), text: ('Home'),),
              Tab(icon: Icon(Icons.chat, size:30,),text: ('Chat'),),
              Tab(icon: Icon(Icons.notifications,size:30,),text: ('Notification'),),
            ],
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ],
            ),
          ),

        ],
      ),*/
  }
}
