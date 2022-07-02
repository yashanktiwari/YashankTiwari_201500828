// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import 'Screen1.dart';

class getStart extends StatefulWidget {
  const getStart({Key? key}) : super(key: key);

  @override
  State<getStart> createState() => _getStartState();
}

class _getStartState extends State<getStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("TRAINING",
                  style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 83, 0, 98))),
              Image(
                image: AssetImage('images/image.png'),
                height: 400,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen1();
                  }));
                },
                child: Text("Get Started"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
