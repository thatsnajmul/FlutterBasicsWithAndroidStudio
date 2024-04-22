import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  //const Welcome({Key? key}) : super(key: key);

  String n,p;
  Welcome(this.n, this.p);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back_ios)),

                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('Go Back')),

                    Text('Welcome Screen'),

                    IconButton(onPressed: (){

                    }, icon: Icon(Icons.search_outlined)),
                  ],
                ),

                Container(
                  height: 50,
                    width: 300,
                    color: Colors.tealAccent,
                    child: Center(
                      child: Text(
                          'Name: $n',style: TextStyle(),),
                    )),
                Container(
                    height: 50,
                    width: 300,
                    color: Colors.tealAccent,
                    child: Center(
                      child: Text(
                        'Phone: $p',style: TextStyle(),),
                    )),
              ],
            ),
          ),
    )
    );
  }
}
