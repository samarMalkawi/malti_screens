import 'package:flutter/material.dart';
import 'package:multipages/main.dart';
import 'package:multipages/page_one.dart';

class page_three extends StatefulWidget {
  const page_three({super.key});

  @override
  State<page_three> createState() => _page_threeState();
}

class _page_threeState extends State<page_three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 173, 143, 108),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hallo in page three",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 187, 233, 71)),
              ),
              Image(
                width: 200,
                height: 200,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/01/08/11/57/butterflies-1127666_960_720.jpg"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.thumb_up_alt,
                    color: Color.fromARGB(255, 18, 60, 94),
                  ),
                  Icon(
                    Icons.thumb_down_alt,
                    color: Color.fromARGB(255, 18, 60, 94),
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
            ],
          ),
        ),
      ),
    );
  }
}
