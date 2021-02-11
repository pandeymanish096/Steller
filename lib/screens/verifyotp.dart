import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:stellar/screens/resetpassword.dart';

//import 'dart:math' as math;
//import 'dart:ui' as ui;




void main() => runApp(verifyotp());

class verifyotp extends StatelessWidget {
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
              height: height*0.6,
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
              padding: const EdgeInsets.all(0.0),
              child: Column(

                children: [
                  SizedBox(height: 15),

                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      color: Colors.white,
                      child: Text(
                        "    Enter OTP",
                        textAlign: TextAlign.left,

                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  OtpTextField(
                    enabledBorderColor: Colors.grey,
                    numberOfFields: 5,
                    fillColor: Colors.grey,
                    fieldWidth: 60,
                    borderColor: Color(0xFF512DA8),
                    showFieldAsBox: true, //set to true to show as box or false to show as dash
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    onSubmit: (String verificationCode){
                      showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text('Code entered is $verificationCode'),
                            );
                          }
                      );
                    }, // end onSubmit
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      color: Colors.white,
                      child: Text(
                        "   Send Again",
                        textAlign: TextAlign.left,

                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
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

                child: Text("Verify",style: TextStyle(color: Colors.white,fontSize: 20),),
                onPressed: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Resetpassword()),
                );},
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(40.0),
                ),
              ),
            ),

            SizedBox(height: 5,),

            //Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 10),),
    InkWell(child:Text('Cancel',style: TextStyle(color: Colors.red,fontSize: 20),),
    onTap: () {
    Navigator.pop(context);},)
          ],

        ),
      ),
    );
  }
}



