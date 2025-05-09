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
        appBar: AppBar(
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
              child: Icon(Icons.camera_alt_outlined),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
              ),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return ListTile(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChildClass(
                        name: chats[index].name.toString(),
                        subName: chats[index].subName.toString(),
                        images: chats[index].time.toString(),
                        time: chats[index].numbers.toString(),
                        numbers: chats[index].images.toString(),
                      ),
                    ));
              },
                leading:
                CircleAvatar(
                  backgroundImage: AssetImage(chats[index].images.toString()),
                ),
                title:
                Text(chats[index].name.toString());
                subtitle:
                Text(chats[index].subName.toString());
                trailing:
                Column(
                  children: [
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.green.shade200,
                      child: Text(
                        chats[index].numbers.toString(),
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Text(chats[index].time.toString()),
                  ],
                );
              );
            }));
  }
}

class ChildClass extends StatelessWidget {
  String name;
  String subName;
  String images;
  String numbers;
  String time;

  ChildClass({
    super.key,
    required this.name,
    required this.images,
    required this.subName,
    required this.numbers,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(images),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
          ]),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(subName),
                ),
              ),
            )
          ],
        ));
  }
}
