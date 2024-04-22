import 'package:flutter/material.dart';
import 'package:project_sub/home_page.dart';

class Spalash extends StatefulWidget {
  const Spalash({Key? key}) : super(key: key);

  @override
  State<Spalash> createState() => _SpalashState();
}

class _SpalashState extends State<Spalash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(
      title: 'GFG',
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:100,
              width: 100,
              color: Colors.blue ,),
            Container(
              child: Text(
                "Spalash Screen",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
