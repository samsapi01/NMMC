import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.pink[200], Colors.indigo[900]])),
            child: LogInPage()),
      ),
    );
  }
}

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  int _pagestate = 0;

  double _loginYoffset = 0;
  double _registerYoffset = 0;

  double windowheight = 0;
  double windowwidth = 0;

  @override
  Widget build(BuildContext context) {
    windowheight = MediaQuery.of(context).size.height;
    windowwidth = MediaQuery.of(context).size.width;

    switch (_pagestate) {
      case 0:
        _loginYoffset = windowheight;
        _registerYoffset = windowheight;
        break;
      case 1:
        _loginYoffset = 0;
        _registerYoffset = 250;
        break;
    }

    return Stack(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Container(child: Image.asset('assets/images/bg.jpg')),
              Container(
                padding: EdgeInsets.fromLTRB(110, 20, 110, 20),
                child: Image.asset('assets/images/logo.PNG'),
              ),
              Container(
                child: Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Navi Mumbai Municipal Corporation',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Welcome to',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'MY',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'CLASSROOM',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _pagestate = 1;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.indigo[400],
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _pagestate = 0;
            });
          },
          child: AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1000),
            transform: Matrix4.translationValues(0, _loginYoffset, 0),
            decoration: BoxDecoration(
              color: Colors.indigo,
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.indigo[900], Colors.pink[200]]),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(110, 70, 110, 20),
                    child: Image.asset('assets/images/logo.PNG'),
                  ),
                ),
                Text(
                  'Navi Mumbai Municipal Corporation',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'MY CLASSROOM',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastLinearToSlowEaseIn,
              transform: Matrix4.translationValues(0, _registerYoffset, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              // child: TextField(
              //   decoration: InputDecoration(hintText: 'Username'),
              // ),
            ),
          ],
        ),
      ],
    );
  }
}
