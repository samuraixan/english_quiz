import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Natija extends StatelessWidget {
  final int natija;
  final int savollaruzunligi;
  final Function() qaytaboshlash;

  Natija(this.natija, this.savollaruzunligi, this.qaytaboshlash);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Natija: $natija/$savollaruzunligi", style:
          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
            ElevatedButton.icon(onPressed: qaytaboshlash , icon: Icon(Icons.restart_alt), label: Text("RESTART"))
          ]
      ),
    );
  }
}