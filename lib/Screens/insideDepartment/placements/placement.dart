import 'package:flutter/material.dart';

class Placements extends StatelessWidget {
  const Placements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'Placements',
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
                      /*Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),*/
                      Text(
                        "Placements 2021-2022\n",
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                      Text(
                        "Records will be updated soon",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "For previous year records, kindly visit the official college website",
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
