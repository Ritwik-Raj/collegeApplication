import 'package:flutter/material.dart';

class Faculty extends StatelessWidget {
  const Faculty({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          'Faculty Profile',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Maths(),
                    ),
                  );*/
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
          ],
          ),
      ),
    );
  }
}