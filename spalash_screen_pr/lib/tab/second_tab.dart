import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTabState();
}
  final imagelist=[
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
    'assets/images/img_5.png',
    'assets/images/img_6.png',

  ];
class _SecondTabState extends State<SecondTab> {
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
          children: List.generate(imagelist.length, (index) =>
              Container(
            height: 100,
            width: 100,
            color: Colors.greenAccent,
            child: Image.asset(imagelist[index],fit: BoxFit.cover,),
          )),
        )

    );
  }
}
