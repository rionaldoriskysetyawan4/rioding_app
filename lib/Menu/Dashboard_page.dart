import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Menu/Controller/Dashboard%20Controller.dart';
import 'package:rioding_app/Menu/Pages/BookPage.dart';
import 'package:rioding_app/Menu/Pages/LikePage.dart';
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
      Likepage(),
      ProfilPage(),
    ];

    return Obx(() {
      return Scaffold(
        backgroundColor: const Color(0xFF8E8E8E),
        body: SafeArea(
          child: menus[dashboardController.selectedIndex.value],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          backgroundColor: const Color(0xFFBBB9B9),
          currentIndex: dashboardController.selectedIndex.value,
          onTap: dashboardController.changeMenu,
          iconSize: 24,
          selectedItemColor: Colors.blue, // Set color for the selected item
          unselectedItemColor: Colors.black54, // Color for unselected items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper),
              label: "News",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Book",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Like",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
