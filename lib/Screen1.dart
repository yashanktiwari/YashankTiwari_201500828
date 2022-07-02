// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_print

import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 24, color: Colors.deepPurple),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                controller: name,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Student Name',
                    icon: Icon(Icons.person)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                  errorText: null,
                  border: UnderlineInputBorder(),
                  hintText: "Email ID",
                  icon: Icon(Icons.email),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (name.text.isNotEmpty && email.text.isNotEmpty) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Screen2(name.text);
                    }));
                  }
                },
                child: Text("LOGIN")),
          ]),
        ),
      ),
    );
  }
}
