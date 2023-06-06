import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Savol extends StatelessWidget {
  final String savol;
  final List<Map<String, dynamic>> javoblar;
  final Function savollargajavoblar;

  Savol(this.savol, this.javoblar, this.savollargajavoblar);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(savol,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold),),
        ElevatedButton(
            onPressed: () => savollargajavoblar(javoblar[0]["togrimi"]),
            child: Text(javoblar[0]["matn"],
              style: TextStyle(fontSize: 20,),),
        ),
        ElevatedButton(
            onPressed: () => savollargajavoblar(javoblar[1]["togrimi"]),
            child: Text(javoblar[1]["matn"],
              style: TextStyle(fontSize: 20,),)
        ),
        ElevatedButton(
            onPressed: () => savollargajavoblar(javoblar[2]["togrimi"]),
            child: Text(javoblar[2]["matn"],
              style: TextStyle(fontSize: 20,),)
        ),
        ElevatedButton(
            onPressed: () => savollargajavoblar(javoblar[3]["togrimi"]),
            child: Text(javoblar[3]["matn"],
              style: TextStyle(fontSize: 20,),)
        ),
      ],
    );
  }
}