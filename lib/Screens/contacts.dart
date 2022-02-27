import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  const Contacts({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'Contact Details',
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
                      /*Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),*/
                      Text(
                        "Official Contact Details\n",
                        textAlign: TextAlign.left,
                        style: new TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                      ),
                      new Icon(
                        Icons.email,
                        size: 30.0,
                      ),
                      Text(
                        "principal@sit.ac.in\n",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),
                      ),
                       Icon(
                        Icons.phone,
                        size: 30.0,
                      ),
                      Text(
                        "+ 91 816 - 2282696, 2214001",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),
                      ),
                      Text(
                        "\nFAX - + 91 816 - 2282994",
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