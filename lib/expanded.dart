import 'package:flutter/material.dart';

class ChatsModel {
  String? name;
  String? subName;
  String? images;
  String? numbers;
  String? time;

//constructor

  ChatsModel(
      {required this.name,
      required this.subName,
      required this.images,
      required this.time,
      required this.numbers});
}

class ClassExpanded extends StatefulWidget {
  const ClassExpanded({super.key});

  @override
  State<ClassExpanded> createState() => _ClassExpandedState();
}

class _ClassExpandedState extends State<ClassExpanded> {
  List<ChatsModel> chats = [
    ChatsModel(
        name: 'Naina',
        subName: 'tm jao to sahi pta chl jye ga',
        images: 'assets/woww.jpg',
        time: '10:12 pm',
        numbers: '1'),
    ChatsModel(
        name: 'Zainab',
        subName: 'ni yr ...mra dil nahi',
        images: 'assets/yeahh.jpg',
        time: '1:02 pm',
        numbers: '4'),
    ChatsModel(
        name: 'Rania',
        subName: 'blkl nahii',
        images: 'assets/yupp.jpg',
        time: '5:33 am',
        numbers: '13'),
    ChatsModel(
        name: 'Asma',
        subName: 'mujhe smjh ni ai',
        images: 'assets/zavii.jpg',
        time: '9:29 am',
        numbers: '8'),
    ChatsModel(
        name: 'Misbah',
        subName: 'jo khna h kho tm',
        images: 'assets/sunn.JPG',
        time: '4:05 pm',
        numbers: '5'),
    ChatsModel(
        name: 'Waaniya',
        subName: 'hm idea h mujhe',
        images: 'assets/tannu.jpg',
        time: '12:00 am',
        numbers: '17'),
    ChatsModel(
        name: 'Eman',
        subName: 'acha si h ...jao pphir',
        images: 'assets/rain.jpg',
        time: '2:12 am',
        numbers: '3'),
    ChatsModel(
        name: 'Zahra',
        subName: 'rest kr lo...thk ho jay g',
        images: 'assets/wide.jpg',
        time: '5:40 pm',
        numbers: '11'),
    ChatsModel(
        name: 'Noor',
        subName: 'hn alhadulillah..',
        images: 'assets/pyarii.png',
        time: '6:09 pm',
        numbers: '12'),
    ChatsModel(
        name: 'Mishhi',
        subName: 'bs tbyt set ni thi',
        images: 'assets/no.png',
        time: '9:55 am',
        numbers: '4'),
    ChatsModel(
        name: 'Fatima',
        subName: 'dimagh na khao mera',
        images: 'assets/nopee.jpg',
        time: '12:00 pm',
        numbers: '19'),
    ChatsModel(
        name: 'Hareem',
        subName: 'As you wish',
        images: 'assets/niccc.jpg',
        time: '10:31 pm',
        numbers: '8'),
    ChatsModel(
        name: 'Dua',
        subName: 'hn shyd..kuch time m',
        images: 'assets/nature.jpg',
        time: '7:18 pm',
        numbers: '3'),
    ChatsModel(
        name: 'Hira',
        subName: 'tm poch lo na zra us se',
        images: 'assets/nainn.jpg',
        time: '4:00 am',
        numbers: '31'),
    ChatsModel(
        name: 'Aqsa',
        subName: 'abhi bt ni kro na',
        images: 'assets/naaaai.jpg',
        time: '3:59 pm',
        numbers: '7'),
    ChatsModel(
        name: 'Zunaira',
        subName: 'okk . thk h',
        images: 'assets/manuu.jpg',
        time: '1:44 am',
        numbers: '3'),
    ChatsModel(
        name: 'KAinat',
        subName: 'mra koi scene ni h',
        images: 'assets/kipy.jpg',
        time: '6:19 am',
        numbers: '21'),
    ChatsModel(
        name: 'Rabia',
        subName: 'hn thk h ..jse si lgy',
        images: 'assets/izzu.jpg',
        time: '11:12 am',
        numbers: '6'),
    ChatsModel(
        name: 'Bina',
        subName: 'Khn ja rhi ho??',
        images: 'assets/juliii.jpg',
        time: '2:00 pm',
        numbers: '5'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
        Expanded(
          flex: 10,
          child: Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.chat_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      'Chats',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.update_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      'Updates',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.groups,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      'Communities',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      'Calls',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                // Row(
                //   children: [
                //     Text(
                //       'Chats',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ],
                // ),

                // Text(
                //   'Updates',
                //   style: TextStyle(color: Colors.white),
                // ),

                // Text(
                //   'Communities',
                //   style: TextStyle(color: Colors.white),
                // ),

                //   'Calls',
                //   style: TextStyle(color: Colors.white),
                // ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
