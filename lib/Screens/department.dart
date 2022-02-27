import 'package:college_application/Screens/insideDepartment/Academic_Calander/Calan.dart';
import 'package:college_application/Screens/insideDepartment/PreviousResults/PreviousResults.dart';
import 'package:college_application/Screens/insideDepartment/TimeTable/Time_table.dart';
import 'package:college_application/Screens/insideDepartment/courses/courses.dart';
import 'package:flutter/material.dart';

class Department extends StatelessWidget {
  const Department({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Department',
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
                      builder: (context) => Timetable(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_view_month,
                        size: 50.0,
                      ),
                      Text(
                        "Time Table",
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
                      builder: (context) => Academical(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.calendar_view_day_rounded,
                        size: 50.0,
                      ),
                      Text(
                        "Academic Calander",
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
                      builder: (context) => Courses(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.library_books,
                        size: 50.0,
                      ),
                      Text(
                        "Courses",
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
                      builder: (context) => PreviousYearResults(),
                    ),
                  );
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.receipt,
                        size: 50.0,
                      ),
                      Text(
                        "Previous Results",
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
