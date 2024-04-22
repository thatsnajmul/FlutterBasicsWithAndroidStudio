
import 'package:flutter/material.dart';

class SliverApp extends StatefulWidget {
  const SliverApp({Key? key}) : super(key: key);

  @override
  State<SliverApp> createState() => _SliverAppState();
}

class _SliverAppState extends State<SliverApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.teal,
            expandedHeight: 500,
            title: Text('Sliver App Bar'),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Test'),
            ),
          ),

          SliverList(delegate: SliverChildListDelegate(
          <Widget>[
            showDetails('C#', 'This is a C# App'),
            showDetails('Java', 'This is a Java App'),
            showDetails('Swift', 'This is a Swift App'),
            showDetails('Dart', 'This is a Dart App'),
            showDetails('Java Script', 'This is a Java Script Web App'),
          ]
          ),
          )

        ],
      ),
    );
  }
}

Widget showDetails(String name, String description){
  return Card(
    child: ListTile(
      title: Text(name),
      subtitle: Text(description),
      leading: CircleAvatar(child: Text(name[0])),
    ),
  );
}

