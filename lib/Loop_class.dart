// import 'package:flutter/material.dart';

// List listname = [
//   "kse ho",
//   "kb aa rhy ho",
//   "kis din jao gy",
//   "Are u sure",
//   "Ok i'm waiting",
// ];

// class LoopClass extends StatefulWidget {
//   const LoopClass({super.key});

//   @override
//   State<LoopClass> createState() => _LoopClassState();
// }

// class _LoopClassState extends State<LoopClass> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 138, 134, 134),
//           title: Text(
//             'Whatsapp Chats screen Through Loops',
//             style: TextStyle(fontWeight: FontWeight.w500),
//           ),
//         ),
//         body: ListView.builder(
//             itemCount: 10,
//             itemBuilder: (context, i) {
//               return ListTile(
//                 leading: CircleAvatar(
//                   child: Text('${i + 1}'),
//                 ),
//                 title: Text(
//                   "Item${i + 1}",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 subtitle: Text(
//                   "This is Item number${i + 1}",
//                   style: TextStyle(
//                       color: const Color.fromARGB(255, 190, 186, 186)),
//                 ),
//                 trailing: Column(
//                   children: [
//                     Text(
//                       "Item${i + 1}",
//                       style: TextStyle(
//                           color: const Color.fromARGB(255, 179, 178, 178)),
//                     ),
//                     CircleAvatar(
//                       radius: 8,
//                       backgroundColor: Colors.green,
//                       child: Text(
//                         "${i + 1}",
//                         style: TextStyle(color: Colors.white, fontSize: 10),
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }));
//   }
// }
import "package:flutter/material.dart";

class LoopClass extends StatefulWidget {
  const LoopClass({super.key});

  @override
  State<LoopClass> createState() => _LoopClassState();
}

class _LoopClassState extends State<LoopClass> {
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
  List<String> subName = [
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
  List<String> circle = [
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
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[i]),
              ),
              title: Text('${name[i]}'), //Text(title[index]),
              subtitle: Text('${subName[i]}'), //Text(subTitle[index]),
              trailing: Column(
                children: [
                  Text('$time'),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.green.shade300,
                    child: Text(
                      'circle',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ), //Text(time[index]),
            );
          }),
    );
  }
}
