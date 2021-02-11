import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:stellar/screens/ForgotPassword.dart';
import 'package:stellar/screens/dashboard.dart';



void main() => runApp(LogIn());

class LogIn extends StatelessWidget {
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 401),
    ));
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(

      home: Scaffold(
        resizeToAvoidBottomPadding: false,

        body: Column(
          children: [
            Container(
              height: height*0.5,
              width: width*1,
              color: Colors.purple,

              child: Column(

                children: [
                  SizedBox(height: 50),
                  Image.asset('Images/graduation-hat-silhouette-vector-24.png',height: height*0.1,width: width*1.0),
                  Text(
                    "Stellar",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                    ),
                    ),
                  SizedBox(height: 50,),
                  Text(
                    "SIGN IN",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  //Icon(
                   // Icons.layers,
                    //color: Colors.green,
                    //size: 100.0,
                  //),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(

                children: [
                  SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      child: Container(
                        color: Colors.white,
                        child: Text(
                          "Phone Number",
                          textAlign: TextAlign.left,

                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                  TextField(
                    style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),

                    decoration: InputDecoration(

                      border: InputBorder.none,

                      hintText: '8445789345',
                      hintStyle: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),
                      prefixText: '+91 ',
                      prefixStyle: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),

                  SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      color: Colors.white,
                      child: Text(
                        "Password",
                        textAlign: TextAlign.left,

                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  TextField(
                    style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),

                    decoration: InputDecoration(

                      border: InputBorder.none,

                      hintText: 'Password',
                      hintStyle: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),


                    ),
                    autofocus: false,
                    obscureText: true,
                  )
                ],
              ),
            ),
            SizedBox(
              width: width*0.9,
              height: 40,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.red,

                child: Text("LOGIN"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),);

                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(40.0),
                ),
              ),
            ),
        SizedBox(height: 7,),
           InkWell( child: Text('FORGOT PASSWORD'),
           onTap: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => ForgotPassword()),
             );
           },),
          //  InkWell( child: Text(''),
          //onTap: (){
    //Navigator.push(
    //context,
    //MaterialPageRoute(builder: (context) => DashboardScreen()),);
    //},)

          ],

        ),
      ),
    );
  }
}



