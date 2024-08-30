import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  @override
  Widget build(BuildContext contaxt) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 218, 247),
          title: const Text(
            "WhatsApp",
            style: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      i++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: 50,
                  )),
              Text(
                "voic $i",
                style: TextStyle(fontSize: 30),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      i--;
                    });
                  },
                  icon: Icon(
                    Icons.remove,
                    size: 50,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
