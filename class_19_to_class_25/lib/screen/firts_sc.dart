
import 'package:flutter/material.dart';

class Screen_One extends StatelessWidget {
  const Screen_One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Hero(
              tag: 'myTag',
              child: Container(
                height: 200,
                width: 200,
                color: Colors.teal,
                  child: Icon(Icons.mail_lock_outlined,size: 50,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

