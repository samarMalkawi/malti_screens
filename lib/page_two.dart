import 'package:flutter/material.dart';
import 'package:multipages/main.dart';
import 'package:multipages/page_one.dart';

class page_two extends StatefulWidget {
  const page_two({super.key});

  @override
  State<page_two> createState() => _page_twoState();
}

class _page_twoState extends State<page_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 240, 101, 131),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hallo in page two",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(186, 82, 222, 115)),
              ),
              Image(
                height: 200,
                width: 200,
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2022/06/30/21/08/flamingo-7294544_960_720.jpg"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.thumb_up_alt,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.thumb_down_alt,
                    color: Colors.purple,
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
