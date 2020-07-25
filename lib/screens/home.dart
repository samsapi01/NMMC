import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NMMC',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.indigo[700], Colors.indigo[900]],
            )),
            child: Academics()));
  }
}

class Academics extends StatefulWidget {
  @override
  _AcademicsState createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        transform: Matrix4.translationValues(0, 200, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.grey[200]),
        padding: EdgeInsets.fromLTRB(50, 80, 50, 0),
        child: Container(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/OC.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Online Classes',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/attendance.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Attendance',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/Profile.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Profile',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/report.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Report Card',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/diary.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Class Diary',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/assignment.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Assignments',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/bigschool.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Academics',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/board.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('Projects',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Column(children: <Widget>[
                        Image.asset('assets/images/desktop.png',
                            width: 25.0, height: 25.0),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('eLearning',
                            style: TextStyle(fontSize: 12.0),
                            textAlign: TextAlign.center),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
