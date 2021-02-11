import 'package:flutter/material.dart';

void main() => runApp(homework());

class homework extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("HOMEWORK"),
          ),
          body: SafeArea(
              child : Center(

                child:Radiobutton(),

              )
          )
      ),
    );
  }
}

class Radiobutton extends StatefulWidget {
  @override
  RadioButtonWidget createState() => RadioButtonWidget();
}

class RadioButtonWidget extends State {

  String radioItem = '';

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        RadioListTile(
          groupValue: radioItem,
          title: Text('Learn Chapter 5 with one essay'),
          value: 'English / Today',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        RadioListTile(
          groupValue: radioItem,
          title: Text('Exercise Trigonometry first topic'),
          value: 'Maths',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Writing Hindi 3 Pages'),
          value: 'Hindi',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),
        RadioListTile(
          groupValue: radioItem,
          title: Text('Test for History First Session '),
          value: 'Social Science',
          onChanged: (val) {
            setState(() {
              radioItem = val;
            });
          },
        ),

        Text('$radioItem', style: TextStyle(fontSize: 23),)

      ],
    );
  }
}