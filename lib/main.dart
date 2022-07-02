// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'dart:async';
import 'package:flutter/material.dart';
import 'getStart.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => getStart())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
