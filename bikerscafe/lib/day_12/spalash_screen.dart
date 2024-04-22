import 'dart:async';
import 'dart:js';

import 'package:bikerscafe/day_12/home_page.dart';
import 'package:flutter/material.dart';


class SpalashScreen extends StatefulWidget {
  const SpalashScreen({Key? key}) : super(key: key);

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }


  startTime() {
    var duration= Duration(seconds: 5);
    return new Timer(duration, route);
  }
  
  route(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }
  @override
  Widget build(BuildContext context){
    return buildWidget(context);
  }
  

  @override
  Widget buildWidget(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150,),
          Container(
            child: Text('Spalash Screen'),
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
