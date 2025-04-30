import 'package:flutter/material.dart';

List listname = [
  "kse ho",
  "kb aa rhy ho",
  "kis din jao gy",
  "Are u sure",
  "Ok i'm waiting",
];

class LoopClass extends StatefulWidget {
  const LoopClass({super.key});

  @override
  State<LoopClass> createState() => _LoopClassState();
}

class _LoopClassState extends State<LoopClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 138, 134, 134),
          title: Text(
            'Whatsapp Chats screen Through Loops',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, i) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('${i + 1}'),
                ),
                title: Text(
                  "Item${i + 1}",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "This is Item number${i + 1}",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 190, 186, 186)),
                ),
                trailing: Column(
                  children: [
                    Text(
                      "Item${i + 1}",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 179, 178, 178)),
                    ),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green,
                      child: Text(
                        "${i + 1}",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
