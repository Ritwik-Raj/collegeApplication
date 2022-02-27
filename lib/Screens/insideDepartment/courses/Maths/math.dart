import 'package:flutter/material.dart';

class Maths extends StatelessWidget {
  const Maths({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'Maths',
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            padding: EdgeInsets.only(bottom: 200, top: 30),
            children: <Widget>[
              ListTile(
                /*leading: Icon(
                  Icons.public,
                  color: Colors.black,
                ),*/
                title: Text("Course Material",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  //
                },
              ),
              ListTile(
                /*leading: Icon(
                  Icons.public,
                  color: Colors.black,
                ),*/
                title: Text("Attendance",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  //
                },
              ),
              ListTile(
                /*leading: Icon(
                  Icons.public,
                  color: Colors.black,
                ),*/
                title: Text("Test Scores",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  //
                },
              ),
              ListTile(
                /*leading: Icon(
                  Icons.public,
                  color: Colors.black,
                ),*/
                title: Text("Assignments",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  //
                },
              ),
            ],
          ),
        ),
    );
  }
}