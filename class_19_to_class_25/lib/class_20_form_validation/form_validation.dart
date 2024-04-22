import 'package:class_19_to_class_25/class_20_form_validation/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final formKey = GlobalKey<FormState>();

  TextEditingController _name = new TextEditingController();
  TextEditingController _phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final double height= MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFffffff),
      body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Here to Get", style: TextStyle(fontSize: 30,color: Color(0xFF363f93)),),
              Text("Welcome...!", style: TextStyle(fontSize: 30,color: Color(0xFF363f93)),),

              SizedBox(height: height*0.05),

              TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  labelText: 'Enter Your Name',
                ),

                validator: (value) {
                  if(value!.isEmpty){
                    return "Enter The Correct Name";
                  }else{
                    return null;
                  }
                },
              ),

              SizedBox(height: height*0.05),

              TextFormField(
                controller: _phone,
                decoration: InputDecoration(
                  labelText: "Enter Your Number",),

                validator: (value) {
                  if(value!.isEmpty){
                    return "Enter The Correct Number";
                  }else{
                    return null;
                  }
                },
              ),
              
              NeumorphicButton(
                margin: EdgeInsets.only(top: 12),
                onPressed: (){
                  if(formKey.currentState!.validate()){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome(
                      _name.text,_phone.text,
                    )));
                  }
                },
                child: Text('Go To the next Page'),
              )

            ],
          ),
        ),
      )
    );
  }
}


