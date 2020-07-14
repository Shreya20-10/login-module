import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade100,
      appBar: AppBar(
        title: Text('E-MAIL'),
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.indigoAccent,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'E-Mail',
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.indigoAccent,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 100.0),
                child: RaisedButton(
                  color: Colors.indigoAccent,
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogInPage()),
                    );
                  },
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 120.0),
                child: RaisedButton(
                  color: Colors.indigoAccent,
                  textColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "You have logged in successfully",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0.0),
              child: RaisedButton(
                color: Colors.indigoAccent,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Go Back",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade200,
      appBar: AppBar(
        title: Text('Sign In'),
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.people,
                  color: Colors.indigoAccent,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.indigoAccent,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'E-Mail',
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.indigoAccent,
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
            ),

            Expanded(
              child:Container(
              margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 180.0),
              child: RaisedButton(
                color: Colors.indigoAccent,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Create An Account",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
