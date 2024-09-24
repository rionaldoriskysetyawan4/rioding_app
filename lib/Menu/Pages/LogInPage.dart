import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rioding_app/Menu/Controller/Login%20Controller.dart';
import 'package:rioding_app/Widget/MyTextField.dart';

class Loginpage extends StatelessWidget {

  Loginpage({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8E8E8E),
        title: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .transparent, // Make the button background transparent
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
        color: Color(0xFF8E8E8E),
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
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    Text: "Masukkan Nama", // Label input
                    Radius: 20, // Radius untuk border
                    Width: 350, // Lebar field
                    Height: 50, // Tinggi field
                    onChanged: (value) {
                      loginController.email.value = value;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    Text: "Masukkan Pasword",
                    Radius: 20,
                    Width: 350,
                    Height: 50,
                    isObsecured: true,
                    onChanged: (value) {
                      loginController.password.value = value;
                    },
                  ),
                ],
              ),
            )),Container(
              width: MediaQuery.of(context).size.width,  // Full screen width
              height: 100,  // Fixed container height
              decoration: BoxDecoration(
                color: Color(0xFFBBB9B9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),  // Rounded top-left corner
                  topRight: Radius.circular(20), // Rounded top-right corner
                ),
              ),
              child: Center(  // Center the button inside the container
                child: Container(
                  color: Color(0xFFBBB9B9),
                  child: SizedBox(
                    width: 100,  // Set the button's width to 100
                    height: 50,  // Set the button's height to 50
                    child:  Obx(() {
                      return loginController.isLoading.value
                          ? CircularProgressIndicator()
                          : ElevatedButton(
                        onPressed: () {
                          loginController.login();
                        },
                        child: Text('Login'),
                      );
                    }),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
