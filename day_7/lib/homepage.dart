import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Day 7'),
      ),

     body: Column(
       children: [

         Padding(
           padding: const EdgeInsets.all(5),
           child: Container(

             height: 300,
             width: 300,

             decoration: BoxDecoration(
               /*boxShadow: [
                 BoxShadow(
                   color: Colors.white,
                   blurRadius: 10,
                   spreadRadius: 5,
                 )
               ],*/
               borderRadius: BorderRadius.circular(20),
               color: Colors.red,
               /*gradient: LinearGradient(colors: [
                 Colors.yellow,
                 Colors.red,
                 Colors.green,
               ])*/
             ),

             child: Center(
               child: Image.asset('images/alone.jpg', fit: BoxFit.cover,)
             ),
           ),
         ),

       ],
     ),

     /* body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('1'),
          Text('1'),
          Text('1'),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('2'),
              Text('2'),
              Text('2'),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('2'),
              Text('2'),
              Text('2'),
            ],
          )



        ],
      ),*/

    );
  }
}
