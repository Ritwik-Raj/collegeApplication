import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            'About',
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
                        "VISION\n",
                        textAlign: TextAlign.left,
                        style: new TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                      ),
                      new Text(
                        "To develop young minds in a learning environment of high academic ambience by synergising spiritual values and technological competence.",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),
                      )
                    ],
                  ),
                )
              ),
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
                        "MISSION\n",
                        textAlign: TextAlign.left,
                        style: new TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                      ),
                      new Text("To continuously strive for the total development of students by educating them in state-of-the-art-technologies and helping them imbibe professional ethics and societal commitment, so that they emerge as competent professionals to meet the global challenges.",
                      textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),)
                    ],
                  ),
                )
              ),
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
                        "COMMITMENT\n",
                        textAlign: TextAlign.left,
                        style: new TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                      ),
                      new Text("1. Impart Quality Education by establishing effective learning teaching earning processes to produce competent engineers and managers with high professional ethics and societal responsibility.\n2. Create congenial environment and provide state-of the-art infrastructure.\n3. Continually improve the effectiveness of the Quality Management System.\n4. Satisfy applicable requirements. ",
                        textAlign: TextAlign.center,
                        style: new TextStyle(fontSize: 20.0),)
                    ],
                  ),
                )
              ) 
            ]
          ),
        )
      );
  }
}
