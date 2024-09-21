import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
      ElevatedButton(
        onPressed: (){
          exit(0);
        },
        child: Text(
          "Duar"
        ),
      )),

      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/dashboard');
              },
              child: Text("login"))
        ],
      )
    );
  }
}
