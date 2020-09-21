import 'package:flutter/material.dart';
import 'DoubleOptIn.dart';
import 'dart:async';
import 'DoubleOptIn.dart';
import 'EditProfile.dart';
import 'PasswordSettings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Home.dart';


 class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    SettingsState myAppState() => new SettingsState();
    return myAppState();
  }
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new Scaffold(
       appBar: AppBar(
leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.pink),
    onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => SwipeCards()));
                  },
  ), 
        centerTitle: true,
        title: Text('Options',style: TextStyle(
    color: Colors.black
  )),
        backgroundColor: Colors.white),
      body: new Builder(
      builder: (BuildContext context) {
        return new Stack(
          children: <Widget>[
            new Center(
              child: new Container(
               
                child: new Card(
                  color: Colors.grey[200],
                  elevation: 6.0,
                  margin: EdgeInsets.only(right: 15.0, left: 15.0),
                  child: new Wrap(
                    children: <Widget>[
                      Center(
                        child: new Container(
                          child: Align(
                            alignment: Alignment(-0.85, 0.20),
                          child: new Text(
                            'Accounts',
                            style: TextStyle(
                                fontSize: 15.0,
                            color: Colors.pink,
                            ),
                          ),
                        ),
                          ),
                      ),
                      new ListTile(
                        title: Text('Edit Profile'),
                        leading: const Icon(Icons.person,
                          color: Colors.pink,),
                   trailing: Icon(Icons.chevron_right),
                   onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => EditProfile()));
          },
                      ),
                      new ListTile(
                        leading: const Icon(Icons.lock,color: Colors.pink,),
                        title: Text('Change Password'),
                         trailing: Icon(Icons.chevron_right),
                         onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => PasswordSettings()));
          },
                      ),
                  
                    ],
                  ),
                ),
              ),
            ),
           
          ],
        );
      },
    ),
bottomNavigationBar: CurvedNavigationBar(
          color: Colors.grey[300],
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white,
          height: 70.0,
          items: <Widget>[
            IconButton(
              icon: Image.asset("images/Home.png",
            ), 
              onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => HomePage()));}
            ),
            IconButton(
         icon: Image.asset("images/Profile.png",
                      ), 
    onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => SwipeCards()));},
           ),
            IconButton(
             icon: Image.asset("images/SettingsHighlight.png",
            ), 
              onPressed: () {}
            ),
          ],
          onTap: (index) {
      //Handle button tap
    },
        ),

),
    );
  }
}


