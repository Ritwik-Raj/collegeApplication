import 'package:flutter/material.dart';

class PreviousYearResults extends StatelessWidget {
  const PreviousYearResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'Previous Year Results',
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(crossAxisCount: 1, children: <Widget>[
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Previous year results will be updated soon",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                ))
          ]),
        ));
  }
}
