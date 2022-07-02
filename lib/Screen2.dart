// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Screen2 extends StatelessWidget {
  String name;
  String cdate = DateFormat("yyyy-MM-dd").format(DateTime.now());
  Screen2(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "Hii, $name",
            style: TextStyle(fontSize: 24),
          ),
          Image(
            image: AssetImage('images/c.png'),
            height: 500,
            width: 500,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You have Successfully Completed Hybrid Mobile App Development Course",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Course Instructor"),
          Text("Pankaj Kapoor", style: TextStyle(color: Colors.blue)),
          Text(cdate),
        ]),
      ),
    );
  }
}
