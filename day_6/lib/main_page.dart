import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final name = const ['Asryo', 'Rakib', 'Abir'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 6 App'),
        centerTitle: true,
      ),

    body: ListView.builder(itemBuilder: (context, index) =>Card(
      color: Colors.grey,
      elevation: 30,
      shadowColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
          height: 30,
          width: 60,

          child:Center(child: Text(name[index])),
        ),
        ),
      itemCount: name.length
    ),

    /*body: ListView.builder(
      itemBuilder: (context, index) => Card(
      child: Container(
        height: 40,
        width: 40,
        color: Colors.brown,
        child: Center(child: Text('A')),
      ),
    ),
      itemCount: 30,
    ),*/

    /*body: ListView(
      children: [
        SizedBox(height: 10,),
        Container(
          width: 20,
          height: 20,
          color: Colors.green,
          child: Icon(Icons.call),
        ),
        SizedBox(height: 10,),
        Container(
          width: 20,
          height: 20,
          color: Colors.redAccent,
          child: Text('A'),
        ),
        SizedBox(height: 10,),
        Container(
          width: 20,
          height: 20,
          color: Colors.pink,
          child: Text('A'),
        ),
        SizedBox(height: 10,),
        Container(
          width: 20,
          height: 20,
          color: Colors.lightBlue,
          child: Text('A'),
        ),
      ],
    ),*/

    /*body: Column(
      children: [
        Text('Title'),
        Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text("Hello 1"),
                    Text("Hello 2")
                  ],
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text("Hello 3"),
                    Text("Hello 4")
                  ],
                )
              ],
            )
          ],
        ),
        Text('Special'),
      ],
    ),*/

    /*body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 300,
            color: Colors.green,
            child: Center(
              child: Text('Container')
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(
                child: Text('Container')
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(
                child: Text('Container')
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(
                child: Text('Container')
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(
                child: Text('Container')
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(
                child: Text('Container')
            ),
          ),
          SizedBox(height: 10,),

          Row (
            children: [
              Text('Vertical 1'),
              Text('Vertical 2'),
              Text('Vertical 3'),
            ],
          )
        ],
      ),
    ),*/

    /*  body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text('Hello 1', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Hello 2', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Hello 3', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Hello 4', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Hello 5', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          Text('Hello 6', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),


        ],
      ),*/



    );
  }
}
