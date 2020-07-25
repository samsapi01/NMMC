import 'package:NMMC/screens/home.dart';
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
              colors: [
                Colors.purple[400],
                Colors.purple[600],
                Colors.indigo[700],
                Colors.indigo[900]
              ],
            )),
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

  bool checked = false;

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
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Image.asset('assets/images/bg.jpg')),
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
                          fontSize: 26,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'MY',
                      style: TextStyle(
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'CLASSROOM',
                      style: TextStyle(
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
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
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.white),
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 1000),
            transform: Matrix4.translationValues(0, _loginYoffset, 0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple[400],
                    Colors.indigo[500],
                    Colors.indigo[600],
                    Colors.indigo[900]
                  ]),
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
        GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: AnimatedContainer(
              padding: EdgeInsets.all(50),
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastLinearToSlowEaseIn,
              transform: Matrix4.translationValues(0, _registerYoffset, 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            hintText: 'USERNAME'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            hintText: 'Password'),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                  //TODO : Add onTap Login function here
                  GestureDetector(
                    child: LoginButton(),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  //TODO : Add remember me script
                  CheckboxListTile(
                    title: Text('Remember Me'),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: checked,
                    onChanged: (bool value) {
                      setState(() {
                        checked = value;
                      });
                    },
                  ),
                  InkWell(
                    child: Text(
                      'Forgot User Name/Password?',
                    ),
                    onTap: () => {
                      //TODO: add Forgot username/password URL here
                    },
                  ),
                ],
              )),
        ),
      ],
    );
  }
}

class LoginButton extends StatefulWidget {
  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150.0,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(25)),
        padding: EdgeInsets.all(15),
        child: Center(
          child: Text('LOG IN',
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ));
  }
}
