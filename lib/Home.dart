import 'package:flutter/material.dart';
import 'main.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'settings.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'DoubleOptIn.dart';
import 'dart:async';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
leading: IconButton(
    icon: Image.asset("images/BuddieU_logo_transparent.png",
            height:50.0,
            ),
  ), 
        centerTitle: true,
        title: Text('BuddieU',style: TextStyle(
    color: Colors.black
  )),
        backgroundColor: Colors.white),
      body: Center(
        child: Text("This page is still in process"),
        ),

    bottomNavigationBar: CurvedNavigationBar(
          color: Colors.grey[300],
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white,
          height: 70.0,
          items: <Widget>[
            IconButton(
              icon: Image.asset("images/HomeHighlight.png",
            height:500.0,
            ), 
              onPressed: () {}
            ),
            IconButton(
         icon: Image.asset("images/Profile.png",
                      ), 
    onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => SwipeCards()));},
           ),
            IconButton(
             icon: Image.asset("images/Settings.png",
            ), 
              onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => Settings()));}
            ),
          ],
          onTap: (index) {
      //Handle button tap
    },
        ),

);
   
 }
 
 
    }

















   