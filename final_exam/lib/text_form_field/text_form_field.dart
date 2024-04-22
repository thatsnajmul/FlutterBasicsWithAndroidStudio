import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: TextFromField(),));
}

class TextFromField extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<TextFromField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter TextField Example'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                      hintText: 'Enter Your Name',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                ),
                MaterialButton(
                  child: Text('Sign In'),
                  onPressed: (){},
                )
              ],
            )
        )
    );
  }
}