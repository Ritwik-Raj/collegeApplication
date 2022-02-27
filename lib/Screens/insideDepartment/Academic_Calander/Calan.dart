import 'package:flutter/material.dart';

class Academical extends StatelessWidget {
  const Academical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: ExactAssetImage('assets/academicCalander.png'),
        )));
  }
}
