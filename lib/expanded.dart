import 'package:flutter/material.dart';

class ClassExpanded extends StatefulWidget {
  const ClassExpanded({super.key});

  @override
  State<ClassExpanded> createState() => _ClassExpandedState();
}

class _ClassExpandedState extends State<ClassExpanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 10,
              child: Container(
                color: Colors.black,
                child: AppBar(
                    title: Text(
                      "WhatsApp",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 14, 14, 14),
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                        ),
                      )
                    ]),
              )),
          Expanded(flex: 80, child: Container(color: Colors.black)),
          Expanded(flex: 10, child: Container(color: Colors.black)),
        ],
      ),
    );
  }
}
