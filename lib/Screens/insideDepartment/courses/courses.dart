import 'package:college_application/Screens/insideDepartment/courses/CO/co.dart';
import 'package:college_application/Screens/insideDepartment/courses/Maths/math.dart';
import 'package:college_application/Screens/insideDepartment/courses/OS/os.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Courses',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
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
                      builder: (context) => Maths(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.plus_one,
                        size: 50.0,
                      ),
                      Text(
                        "Maths",
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
                      builder: (context) => OperatingSystem(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.laptop_windows,
                        size: 50.0,
                      ),
                      Text(
                        "Operating Systems",
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
                      builder: (context) => ComputerOrganisation(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.memory,
                        size: 50.0,
                      ),
                      Text(
                        "Computer Organisation",
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