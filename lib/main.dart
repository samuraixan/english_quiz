import 'package:flutter/material.dart';

import './widgets/savol.dart';
import './widgets/natija.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> savollarvajavoblar = [
    {
      "savol": "1. O`zbekiston poytaxti____?",
      "javoblar": [
        {"matn": "Pop", "togrimi": false},
        {"matn": "Toshkent", "togrimi": true},
        {"matn": "Orom", "togrimi": false},
        {"matn": "Tect", "togrimi": false},

      ]
    },
    {
      "savol": "2. Ismingiz ___?",
      "javoblar": [
        {"matn": "Kim", "togrimi": true},
        {"matn": "Nima", "togrimi": true},
        {"matn": "Qanaqa", "togrimi": false},
        {"matn": "Bor", "togrimi": false},

      ]
    },
    {
      "savol": "3. Yoshingiz ___?",
      "javoblar": [
        {"matn": "Qancha", "togrimi": false},
        {"matn": "Nima", "togrimi": false},
        {"matn": "Nechchida", "togrimi": true},
        {"matn": "Qani", "togrimi": false},

      ]
    },
    {
      "savol": "4. Nechinchi ____ talabasisiz?",
      "javoblar": [
        {"matn": "Baho", "togrimi": false},
        {"matn": "Qancha", "togrimi": false},
        {"matn": "Kimlar", "togrimi": false},
        {"matn": "Kurs", "togrimi": true},

      ]
    },
  ];


  String question = "1-Savol";
  String javob1 = "1-Javob S1";
  String javob2 = "2-Javob S1";
  String javob3 = "3-Javob S1";
  String javob4 = "4-Javob S1";

  int savol = 0;
  int natija = 0;

  void answerquestion(bool togrimi) {
    print(togrimi);
    setState(() {
      savol++;
      if (togrimi) {
        natija++;
        print(natija);
      }
    });
  }

  void qaytaboshlash() {
    setState(() {
      savol = 0;
      natija = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, title: Text("Ingliz Tili Quiz"),
        ),
        body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: savol < savollarvajavoblar.length
            ? Savol(savollarvajavoblar[savol]["savol"], savollarvajavoblar[savol]["javoblar"], answerquestion)
            : Natija(natija, savollarvajavoblar.length, qaytaboshlash)
      ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Homework(),
//     );
//   }
// }
//
// class Homework extends StatefulWidget {
//   @override
//   HomeworkState createState() => HomeworkState();
// }
//
// class HomeworkState extends State<Homework> {
//   String myText = "Meni o`zgartir!";
//
//   void changeText() {
//     setState(() {
//       myText = "Men o`zgardim!";
//     });
//     print(myText);
// }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Homework"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("Pastdagi matnni tugmachani bosish orqali o`zgartiring!",
//           style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold),),
//           Text(myText, style: TextStyle(
//               fontSize: 20, fontWeight: FontWeight.w500)),
//           ElevatedButton(onPressed: changeText, child: Text("CLICK"),),
//         ],
//       ),
//       ),
//     );
//   }
// }