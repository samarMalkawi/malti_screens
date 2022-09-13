import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:multipages/page_three.dart';
import 'package:multipages/page_two.dart';
import 'package:multipages/page_one.dart';

void main() {
  runApp(MaterialApp(
    home: multiPages(),
  ));
}

class multiPages extends StatelessWidget {
  const multiPages({super.key});

  @override
  Widget build(BuildContext context) {
    return home();
  }
}

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Container(
          color: Color.fromARGB(255, 107, 175, 231),
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Welecom in home page",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 245, 65, 125)),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 48, 236, 195),
                    onPrimary: Color.fromARGB(255, 245, 65, 125)),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return page_one();
                    }));
                  });
                }),
                child: Text(
                  "press to go to page #1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            //----------------------------------------------------------------------------------------------
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 48, 236, 195),
                    onPrimary: Color.fromARGB(255, 245, 65, 125)),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return page_two();
                    }));
                  });
                }),
                child: Text(
                  "press to go to page #2",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
            //----------------------------------------------------------------------------------------------
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 48, 236, 195),
                    onPrimary: Color.fromARGB(255, 245, 65, 125)),
                onPressed: (() {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return page_three();
                    }));
                  });
                }),
                child: Text(
                  "press to go to page #3",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ]),
        )));
  }
}
