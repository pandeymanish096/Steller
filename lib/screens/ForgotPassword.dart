import 'package:flutter/material.dart';
import 'package:stellar/screens/verifyotp.dart';
//import 'dart:math' as math;
//import 'dart:ui' as ui;




void main() => runApp(ForgotPassword());

class ForgotPassword extends StatelessWidget {
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
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
                    "Forgot Password",
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 40,
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
                     prefix: Text("+91 "),
                      prefixStyle: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),

                  SizedBox(height: 50),




                ],
              ),
            ),
            SizedBox(
              width: width*0.9,
              height: 50,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.red,

                child: Text("Generate OTP"),
                onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => verifyotp()),
                );},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(40.1),
                ),
              ),
            ),

            SizedBox(height: 10,),

            InkWell(child:Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 20),),
                onTap: () {
                  Navigator.pop(context);
                })


          ],

        ),
      ),
    );
  }
}



