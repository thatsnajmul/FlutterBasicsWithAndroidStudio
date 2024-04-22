import 'package:class_19_to_class_25/class_18_liquid_swap/liquidSwipe.dart';
import 'package:class_19_to_class_25/class_19_sliver_app/hero_animation_widgets.dart';
import 'package:class_19_to_class_25/class_19_sliver_app/sliverappBar.dart';
import 'package:class_19_to_class_25/class_20_form_validation/form_validation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliverApp(),
    );
  }
}


