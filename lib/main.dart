import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatefulWidget {
  @override
  _ExampleHomePageState createState() => _ExampleHomePageState();
}

class _ExampleHomePageState extends State<ExampleHomePage>
    with TickerProviderStateMixin {
  List<String> welcomeImages = [
    "images/Person1.png",
    "images/Person1.png",
    "images/Person1.png",
    "images/person1.png",
    "images/person1.png",
    "images/Person1.png",
    
  ];


  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('BuddieU',style: TextStyle(color: Colors.redAccent),),
        ),
        body:  Container(
            height: MediaQuery.of(context).size.height * 0.7,
            child:TinderSwapCard(
                 orientation: AmassOrientation.TOP,
                 totalNum: 6,
              stackNum: 5,
              swipeEdge: 4.0,
              maxWidth: MediaQuery.of(context).size.width * 0.9,
              maxHeight: MediaQuery.of(context).size.width * 0.9,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              minHeight: MediaQuery.of(context).size.width * 0.8,
              cardBuilder: (context, index) => Card(
                child: Image.asset('${welcomeImages[index]}'),
              ) ,
              cardController: controller = CardController(),
              swipeUpdateCallback:
                  (DragUpdateDetails details, Alignment align){
                   if(align.x < 0){
                    print("nope");

                   }else if (align.x > 0){
                    print("like");
                   }
              },
              swipeCompleteCallback:
              (CardSwipeOrientation orientaion , int index){

              },
            )),
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.white,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white,
          height: 70.0,
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: Colors.grey[400],
            ),
            
           Image.asset("images/BuddieU_logo_transparent.png",
            height:50.0,
            ),   
            Icon(
              Icons.settings,
              size: 30.0,
              color: Colors.grey[400],
            ),
          ],
        ),
      );
  }
}