import 'package:flutter/material.dart';

class ParameterLoop extends StatefulWidget {
  const ParameterLoop({super.key});

  @override
  State<ParameterLoop> createState() => _ParameterLoopState();
}

class _ParameterLoopState extends State<ParameterLoop> {
  List<String> name = [
    'Aisha',
    'Fatima',
    'Hoorwish',
    'Manala',
    'Hadia',
    'Aina',
    'Alishba',
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
  List<String> subTitle = [
    'Ok ..thk h tm w8 kro',
    'Yaarrr m sochun g...',
    'As u Wish',
    'kl Jao g??',
    'I know...tm jnti ho',
    'acha ...kl aun g',
    'Ooo plzzz yrr..',
    'kl jana h ya ni',
    'm kl btaun g',
    'Vo tmhara poch rhi thi',
    'sahi h yr',
    'hn hn relax....No worries',
    'Routine chng kr k dekho',
    'hn socho zra is pr',
    'Okk done',
    'kl tyar rhnaa...si h na',
    'm aa rhi hun lny in 2 mins',
    'Fine broo..',
  ];
  List<String> time = [
    '2:15 am',
    '5:30 pm',
    '7:08 pm',
    '12:00 am',
    '8:17 am',
    '4:12 pm',
    '5:19 am',
    '9:34 am',
    '3:55 am',
    '10:00 pm',
    '11:23 pm',
    '7:06 am',
    '2:38 am',
    '4:56 am',
    '8:17 am',
    '11:23 pm',
    '5:30 pm',
    '2:15 am',
  ];
  List<String> images = [
    'assets/woww.jpg',
    'assets/rain.jpg',
    'assets/pgll.jpg',
    'assets/sunn.JPG',
    'assets/post.png',
    'assets/pyarii.png',
    'assets/nature.jpg',
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
  List<String> numbers = [
    '8',
    '18',
    '12',
    '30',
    '2',
    '13',
    '6',
    '10',
    '36',
    '4',
    '19',
    '10',
    '73',
    '9',
    '54',
    '20',
    '12',
    '5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChildClass(
                        name: name[index],
                        subTitle: subTitle[index],
                        images: images[index],
                        time: time[index],
                        numbers: numbers[index],
                      ),
                    ));
              },
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text(name[index]),
              subtitle: Text(subTitle[index]),
              trailing: Column(
                children: [
                  CircleAvatar(
                    radius: 9,
                    child: Text(
                      numbers[index],
                      style: TextStyle(fontSize: 10),
                    ), //(numbers),
                  ),
                  Text(time[index]),
                ],
              ),
            );
          }),
    );
  }
}

class ChildClass extends StatelessWidget {
  String name;
  String subTitle;
  String images;
  String time;
  String numbers;
  ChildClass(
      {super.key,
      required this.name,
      required this.subTitle,
      required this.images,
      required this.time,
      required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            backgroundImage: AssetImage(images),
          ),
          title: Text(name),
        ),
        body: Column(
          children: [
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
                  child: Text(subTitle),
                ),
              ),
            )
          ],
        ));
  }
}
