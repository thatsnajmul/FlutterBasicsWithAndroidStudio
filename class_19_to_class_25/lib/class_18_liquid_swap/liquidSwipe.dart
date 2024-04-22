import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class Liquid extends StatefulWidget {
  const Liquid({Key? key}) : super(key: key);

  @override
  State<Liquid> createState() => _LiquidState();
}

class _LiquidState extends State<Liquid> {

  final page=[
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.teal,
    )
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Liquid Swipe'),
      ),
      body: LiquidSwipe(
        pages: page,

      ),
    );

  }
}
