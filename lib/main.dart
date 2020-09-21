import 'package:flutter/material.dart';
import 'DoubleOptIn.dart';
import 'Home.dart';

    void main() {
      runApp(MaterialApp(
        title: 'Flutter',
        
        home: LoginScreen(),
      ));
    }

 class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    LoginScreenState myAppState() => new LoginScreenState();
    return myAppState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new Scaffold(body: new Builder(
      builder: (BuildContext context) {
        return new Stack(
          children: <Widget>[
            new Image.asset(
              'images/BG2.png',
              fit: BoxFit.cover,
            ),
            new Center(
              child: new Container(
               
                child: new Card(
                  color: Colors.white,
                  elevation: 6.0,
                  margin: EdgeInsets.only(right: 3.0, left: 5.0),
                  child: new Wrap(
                    children: <Widget>[
                   new ListTile(
                        
                      ),
                      Center(
                        child: new Container(
                          alignment: new FractionalOffset(0.01, 1.0),
                          child: new Text(
                            'Login with your email id',
                            style: TextStyle(
                                fontSize: 20.0,),
                          ),
                        ),
                      ),
                     //   new ListTile(
                        
                      //),
                      new ListTile(
                        leading: const Icon(Icons.person),
                        title: new TextFormField(
                          decoration: new InputDecoration(
                            hintText: 'email id',
                           // labelText: 'Enter Your Email address',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      new ListTile(
                        
                      ),
                      

                                            
                      Center(

                   child: Container(
              margin: EdgeInsets.all(20),
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.orange[300]],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
              ),
              child: FlatButton(
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => HomePage()));
                  },
              ),
            ),
                        ),
                      
                    ],
                  ),
                ),
              ),
            ),
           
          ],
        );
      },
    )));
  }
}










