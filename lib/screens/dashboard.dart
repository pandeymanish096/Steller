import 'package:flutter/material.dart';
import 'package:stellar/screens/homework.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF578B81),
        dividerColor: Colors.grey,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yogita Saje'),
        actions: <Widget>[
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
                  value: 0,
                  child: Text('Dash Board'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Homework'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Attendance'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('Fee Details'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('Examination'),
                ),
              ];
            },
          ),
        ],
      ),
      body: IconTheme.merge(
        data: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                    /*  Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(Icons.create, size: 72.0),
                      ),*/
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(''),
                            Text(
                              '',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(''),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(''),
                          Text(''),
                          Text(''),
                        ],
                      ),
                    ],
                  ),
                  //Divider(height: 0),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.home,
                      text: 'Dashboard',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.book,
                      text: 'Homework ',
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homework()),);

                        },
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.pages,
                      text: 'Attendance',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.account_balance,
                      text: 'Fee Details',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.assignment,
                      text: 'Examination',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.assignment_turned_in,
                      text: 'Report Card',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.calendar_today,
                      text: 'Calender',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.lightbulb_outline,
                      text: 'NoticeBoard',
                      onTap: () {},
                    ),
                  ),
                  Expanded(
                    child: DashboardButton(
                      icon: Icons.library_music,
                      text: 'Multimedia',
                      onTap: () {},
                    ),
                  ),
                  //    ],),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                          Expanded(
                            child: DashboardButton(
                              icon: Icons.person,
                              text: 'Profile',
                              onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],),
    ),);
  }
}

class DashboardButton extends StatelessWidget {
  const DashboardButton({
    Key key,
    @required this.icon,
    @required this.text,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 0.6,
              child: FittedBox(
                child: Icon(icon),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 0.8,
            ),
            SizedBox(height: 4.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(height: 1.0),
            ),
          ],
        ),
      ),
    );
  }
}