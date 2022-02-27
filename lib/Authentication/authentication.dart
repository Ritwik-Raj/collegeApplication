import 'package:college_application/Authentication/flutterfire.dart';
import 'package:college_application/Authentication/home_view.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  TextEditingController _emailField = TextEditingController();
  TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 140,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/logo.png')
                        //fit: BoxFit.fitHeight,
                        )),
            ),
            SizedBox(
              height: 8.0,
            ),
            SizedBox(
              height: 50.0,
              width: 300.0,
              child:
              TextFormField(
              controller: _emailField,
              decoration: InputDecoration(
                  //hintText: "Enter your Email",
                  //hintStyle: TextStyle(color: Colors.white),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ),
            /*TextFormField(
              controller: _emailField,
              decoration: InputDecoration(
                  //hintText: "Enter your Email",
                  //hintStyle: TextStyle(color: Colors.white),
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),*/
            /*SizedBox(
              height: 8.0,
            ),*/
            SizedBox(
              height: 50.0,
              width: 300.0,
              child: TextFormField(
              controller: _passwordField,
              decoration: InputDecoration(
                  //hintText: "Enter your Password",
                  //hintStyle: TextStyle(color: Colors.white),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
              obscureText: true,
            ),
            ),
            /*TextFormField(
              controller: _passwordField,
              decoration: InputDecoration(
                  //hintText: "Enter your Password",
                  //hintStyle: TextStyle(color: Colors.white),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
              obscureText: true,
            ),*/
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.lightGreenAccent,
              ),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await signIn(_emailField.text, _passwordField.text);
                  if (shouldNavigate) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  } else {
                    /*Navigator.push(context, MaterialPageRoute(
                      builder: (context) => toggleView()
                      ,)
                    ,);*/
                    register(_emailField.text, _passwordField.text);
                  }
                },
                child: Text("Sign In"),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1.0),
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.lightGreenAccent,
              ),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate =
                      await register(_emailField.text, _passwordField.text);
                  if (shouldNavigate) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  }
                },
                child: Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
