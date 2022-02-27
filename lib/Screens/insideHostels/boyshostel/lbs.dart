import 'package:flutter/material.dart';

class LBS extends StatelessWidget {
  const LBS({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'LBS Details',
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.count(crossAxisCount: 1, children: <Widget>[
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 10,
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Capacity - 328\n",
                        textAlign: TextAlign.left,
                        style: new TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                      ),
                      Text(
                        "Deputy Warden \n Dr Nandeesh\n",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "+91-9449305245",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                )
              ), 
            ]
          ),
        )
      );
  }
}