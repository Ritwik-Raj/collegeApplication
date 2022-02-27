import 'dart:ui';

import 'package:college_application/Authentication/authentication.dart';
import 'package:college_application/Screens/Hostels.dart';
import 'package:college_application/Screens/about.dart';
import 'package:college_application/Screens/contacts.dart';
import 'package:college_application/Screens/department.dart';
import 'package:college_application/Screens/insideDepartment/placements/placement.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'SIT TUMKUR',
        ),
        elevation: 10.0,
        actions: <Widget>[
          TextButton.icon(
            onPressed: () async {
              //await FirebaseAuth.instance.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Authentication(),
                  ));
            },
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      drawer: new Drawer(
        elevation: 100,
        child: Container(
          color: Colors.blue[100],
          child: ListView(
            padding: EdgeInsets.only(bottom: 200, top: 30),
            children: <Widget>[
              Container(
                height: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/logo.png')
                        //fit: BoxFit.fitHeight,
                        )), //The argument type 'AssetImage' can't be assigned to the parameter type 'DecorationImage?'
              ),
              ListTile(
                leading: Icon(
                  Icons.public,
                  color: Colors.black,
                ),
                title: Text("Official Website"),
                onTap: () {
                  launch(
                      'http://sit.ac.in/html/home.html'); //launch pubspec.yaml dependency addition
                },
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons
                      .linkedin, //FontAwesomeicons pubspec.yaml dependency addition
                  color: Colors.blue,
                ),
                title: Text("Linkedin"),
                onTap: () {
                  launch('https://www.linkedin.com/school/sit-tumkur/');
                },
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons
                      .instagramSquare, //FontAwesomeicons pubspec.yaml dependency addition
                  color: Colors.blue,
                ),
                title: Text("Instagram"),
                onTap: () {
                  launch('https://www.instagram.com/sit_tumakuru');
                },
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons
                      .facebook, //FontAwesomeicons pubspec.yaml dependency addition
                  color: Colors.blue,
                ),
                title: Text("Facebook"),
                onTap: () {
                  launch('https://www.facebook.com/Sit01/?ti=as');
                },
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[            
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),
                      Text(
                        "About Institute",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Department(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.pages,
                        size: 50.0,
                      ),
                      Text(
                        "Department",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch('https://sit.irins.org/');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 50.0,
                      ),
                      Text(
                        "Faculy Profile",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Placements(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        size: 50.0,
                      ),
                      Text(
                        "Placements",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Contacts(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.contact_mail,
                        size: 50.0,
                      ),
                      Text(
                        "Contacts",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Hostel(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.apartment,
                        size: 50.0,
                      ),
                      Text(
                        "Hostel",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 17.0),
                      )
                    ],
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
