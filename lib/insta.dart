import 'package:flutter/material.dart';

class InstaClass extends StatefulWidget {
  const InstaClass({super.key});

  @override
  State<InstaClass> createState() => _InstaClassState();
}

class _InstaClassState extends State<InstaClass> {
  @override
  List<String> name = [
    'Alina',
    'Ishal',
    'Reema',
    'Zahra',
    'Rumaisa',
    'Hira',
    'Zainii',
    'Hamna',
    'Bushra',
    'Amna',
    'Naina',
  ];
  List<String> images = [
    'assets/naaaai.jpg',
    'assets/nainn.jpg',
    'assets/izzu.jpg',
    'assets/intt.jpg',
    'assets/juliii.jpg',
    'assets/manuu.jpg',
    'assets/kipy.jpg',
    'assets/gaguu.jpg',
    'assets/gddd.jpg',
    'assets/fike.jpg',
    'assets/fatii.jpg',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          Icon(Icons.chat_bubble_outline_outlined)
        ],
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, i) {
            return ListTile();
          }),
    );
  }
}
