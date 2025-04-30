import 'package:flutter/material.dart';

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
          title: Text('Whatsapp chats screen Through Loops'),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, i) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text('${i + 1}'),
                ),
                title: Text("Item${i + 1}"),
                subtitle: Text("This is Item number${i + 1}"),
                trailing: Column(
                  children: [
                    Text("Item${i + 1}"),
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
