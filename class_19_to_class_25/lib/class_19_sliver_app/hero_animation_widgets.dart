import 'package:class_19_to_class_25/screen/firts_sc.dart';
import 'package:flutter/material.dart';

class HeroClass extends StatelessWidget {
  const HeroClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 500,),

          CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: Hero(
                tag: 'mytag',
                child: Icon(Icons.mail_lock_outlined),
              ),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>const Screen_One()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
