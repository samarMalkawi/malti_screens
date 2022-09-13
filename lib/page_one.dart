import 'dart:html';

import 'package:flutter/material.dart';
import 'package:multipages/main.dart';

class page_one extends StatefulWidget {
  const page_one({super.key});

  @override
  State<page_one> createState() => _page_oneState();
}

class _page_oneState extends State<page_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.amber[300],
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hallo in page one",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 89, 23, 101)),
              ),
              IconButton(
                  onPressed: (() {
                    setState(() {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: ((context) {
                        return home();
                      })));
                    });
                  }),
                  icon: Icon(Icons.home)),
            ],
          ),
        ),
      ),
    );
  }
}
