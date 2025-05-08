import 'package:flutter/material.dart';

class ChatsModel {
  String? name;
  String? subName;
  String? imgaes;
  String? numbers;
  String? time;

//constructor

  ChatsModel(
      {required this.name,
      required this.subName,
      required this.imgaes,
      required this.time,
      required this.numbers});
}

class ClassModel extends StatefulWidget {
  const ClassModel({super.key});

  @override
  State<ClassModel> createState() => _ClassModelState();
}

class _ClassModelState extends State<ClassModel> {
  List<ChatsModel> chats = [
    ChatsModel(
        name: 'Naina',
        subName: 'tm jao to sahi pta chl jye ga',
        imgaes: 'assets/woww.jpg',
        time: '10:12 pm',
        numbers: '1'),
    ChatsModel(
        name: 'Zainab',
        subName: 'ni yr ...mra dil nahi',
        imgaes: 'assets/yeahh.jpg',
        time: '1:02 pm',
        numbers: '4'),
    ChatsModel(
        name: 'Rania',
        subName: 'blkl nahii',
        imgaes: 'assets/yupp.jpg',
        time: '5:33 am',
        numbers: '13'),
    ChatsModel(
        name: 'Asma',
        subName: 'mujhe smjh ni ai',
        imgaes: 'assets/zavii.jpg',
        time: '9:29 am',
        numbers: '8'),
    ChatsModel(
        name: 'Misbah',
        subName: 'jo khna h kho tm',
        imgaes: 'assets/sunn.JPG',
        time: '4:05 pm',
        numbers: '5'),
    ChatsModel(
        name: 'Waaniya',
        subName: 'hm idea h mujhe',
        imgaes: 'assets/tannu.jpg',
        time: '12:00 am',
        numbers: '17'),
    ChatsModel(
        name: 'Eman',
        subName: 'acha si h ...jao pphir',
        imgaes: 'assets/rain.jpg',
        time: '2:12 am',
        numbers: '3'),
    ChatsModel(
        name: 'Zahra',
        subName: 'rest kr lo...thk ho jay g',
        imgaes: 'assets/wide.jpg',
        time: '5:40 pm',
        numbers: '11'),
    ChatsModel(
        name: 'Noor',
        subName: 'hn alhadulillah..',
        imgaes: 'assets/pyarii.jpg',
        time: '6:09 pm',
        numbers: '12'),
    ChatsModel(
        name: 'Mishhi',
        subName: 'bs tbyt set ni thi',
        imgaes: 'assets/no.png',
        time: '9:55 am',
        numbers: '4'),
    ChatsModel(
        name: 'Fatima',
        subName: 'dimagh na khao mera',
        imgaes: 'assets/nopee.jpg',
        time: '12:00 pm',
        numbers: '19'),
    ChatsModel(
        name: 'Hareem',
        subName: 'As you wish',
        imgaes: 'assets/niccc.jpg',
        time: '10:31 pm',
        numbers: '8'),
    ChatsModel(
        name: 'Dua',
        subName: 'hn shyd..kuch time m',
        imgaes: 'assets/nature.jpg',
        time: '7:18 pm',
        numbers: '3'),
    ChatsModel(
        name: 'Hira',
        subName: 'tm poch lo na zra us se',
        imgaes: 'assets/nainn.jpg',
        time: '4:00 am',
        numbers: '31'),
    ChatsModel(
        name: 'Aqsa',
        subName: 'abhi bt ni kro na',
        imgaes: 'assets/naaaai.jpg',
        time: '3:59 pm',
        numbers: '7'),
    ChatsModel(
        name: 'Zunaira',
        subName: 'okk . thk h',
        imgaes: 'assets/manuu.jpg',
        time: '1:44 am',
        numbers: '3'),
    ChatsModel(
        name: 'KAinat',
        subName: 'mra koi scene ni h',
        imgaes: 'assets/kipy.jpg',
        time: '6:19 am',
        numbers: '21'),
    ChatsModel(
        name: 'Rabia',
        subName: 'hn thk h ..jse si lgy',
        imgaes: 'assets/izzu.jpg',
        time: '11:12 am',
        numbers: '6'),
    ChatsModel(
        name: 'Bina',
        subName: 'Khn ja rhi ho??',
        imgaes: 'assets/juliii.jpg',
        time: '2:00 pm',
        numbers: '5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(chats[index].name.toString()),
                subtitle: Text(chats[index].subName.toString()),
                trailing: Column(
                  children: [
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.green.shade200,
                      child: Text(chats[index].numbers.toString()),
                    ),
                    Text(chats[index].time.toString()),
                  ],
                ),
              );
            }));
  }
}
