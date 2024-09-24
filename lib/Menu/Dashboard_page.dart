import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Menu/Controller/Dashboard%20Controller.dart';
import 'package:rioding_app/Menu/Pages/BookPage.dart';
import 'package:rioding_app/Menu/Pages/NewsPage.dart';
import 'package:rioding_app/Menu/Pages/ProfilPage.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the DashboardController
    final DashboardController dashboardController = Get.find();

    // List of menu pages with corrected class names
    final List<Widget> menus = [
      Newspage(),
      Bookpage(),
      ProfilPage(),
    ];

    return Obx(() {
      return Scaffold(
        backgroundColor: Color(0xFF8E8E8E),

        body: menus[dashboardController.selectedIndex.value],

        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xFFBBB9B9), // Set a background color
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)), // Rounded top corners
          ),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
            ), // Ensure rounded corners
            child:
            BottomNavigationBar(
              elevation: 0,
              backgroundColor: Color(0xFFBBB9B9),
                currentIndex: dashboardController.selectedIndex.value,
                onTap: dashboardController.changeMenu,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.money), label: "Transaction"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_2_outlined), label: "profile"),
                ]),
          ),
        ),
      );
    });
  }
}