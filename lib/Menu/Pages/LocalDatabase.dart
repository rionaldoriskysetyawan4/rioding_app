import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataBase extends StatelessWidget {
  const DataBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yang Disuka"),
      ),
      body: ListView(
        children: [

          Container(
            child: Text("Ini Buku yang disukai"),
          ),
          Container(
            child: Text("Hallo"),
          ),
        ]
      ),
    );
  }
}
