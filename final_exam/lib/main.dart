import 'package:final_exam/sliver_app_bar/sliver_app_bar.dart';
import 'package:final_exam/tab_bar/tab_bar.dart';
import 'package:final_exam/text_form_field/text_form_field.dart';
import 'package:flutter/material.dart';

import 'grid_view/grid_view.dart';
import 'listview/list_view.dart';
import 'modal_bottom_sheet/modal_bottom_sheet.dart';
import 'card/card_view.dart';
import 'navigation_bar/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabBarDemo(),
    );
  }
}


