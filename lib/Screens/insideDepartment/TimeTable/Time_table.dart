import 'package:flutter/material.dart';

class Timetable extends StatelessWidget {
  const Timetable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/timetable.png'))));
  }
}