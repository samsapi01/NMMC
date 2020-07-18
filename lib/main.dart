import 'package:flutter/material.dart';

void main () {
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
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.indigo[400],
                Colors.indigo[900]                
              ] 
            )
          ),     
          child: LogInPage()
        ),
      ), 
    );
  }
}


class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: <Widget>[
          Container(        
            child: 
            Image.asset('assets/images/bg.jpg')
            ),
          Container(            
            padding: EdgeInsets.fromLTRB(110, 20, 110, 20),
            child: 
            Image.asset('assets/images/logo.PNG'),
            ),
          Container(
            child: Container(
              padding: EdgeInsets.only(bottom: 20),             
              child: 
              Text(
                'Navi Mumbai Municipal Corporation',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
                )
              ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Column(
            children:<Widget> [ 
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white                
               ),
              ),
              SizedBox(height: 20),
            Text(
              'MY',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
              ),
              SizedBox(height: 10),
            Text(
              'CLASSROOM',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white
               ),
              ),
            ],
            ),
            ),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            child:GestureDetector(
              onTap: () {  

              },
                child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,            
                decoration: BoxDecoration(
                  color: Colors.indigo[400],
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22
                    ),
                    ),
                ),
              ),
            )
            ),
        ]
      )
    );
  }
}