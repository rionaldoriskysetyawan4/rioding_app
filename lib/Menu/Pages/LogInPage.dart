import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rioding_app/Widget/MyTextField.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Make the button background transparent
                shadowColor: Colors.transparent, // Remove the shadow as well
              ),
              onPressed: () {
                exit(0);
              },
              child: Image.asset(
                'images/exit.png',
                height: 40,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
        children: <Widget>[
        Container(
        child: Image.asset(
        'images/RIODING.png',
          height: 300,
      ),
      ),
      Expanded(
          child: Container(
            child: Column(
              children: [
                Text("Your Account"),
                SizedBox(height: 20,),
                MyTextField(
                  Text: "Masukkan Nama",
                  Radius: 20,
                  Width: 350,
                  Height: 50,
                ),
                SizedBox(height: 20,),
                MyTextField(
                  Text: "Masukkan Pasword",
                  Radius: 20,
                  Width: 350,
                  Height: 50,
                  isObsecured: true,
                ),


              ],
            ),
          )),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20)
            ),
              child:
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/Dashboard');
                    },
                    child: Text("login")
                ),
              ),
            ),

      ],
    ),
      ),

    );
  }
}
