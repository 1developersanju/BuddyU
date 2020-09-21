import 'package:flutter/material.dart';
import 'settings.dart';

class PasswordSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.pink),
    onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => Settings()));}
  ), 
        centerTitle: true,
        title: Text('PasswordSettings',style: TextStyle(
    color: Colors.black
  )),
        backgroundColor: Colors.white),
      body: Center(
        child: Text("This page is still in process"),
        ),
      );
   
 }
 
 
    }
  