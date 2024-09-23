import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:rioding_app/Menu/Controller/Dashboard%20Controller.dart';
import 'package:rioding_app/Menu/Pages/BookPage.dart';
import 'package:rioding_app/Menu/Pages/NewsPage.dart';
import 'package:rioding_app/Menu/Pages/ProfilPage.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
    Get.put(DashboardController());

    final List<Widget> menus = [Newspage(), Bookpage(), ProfilPage()];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper), label: "News"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book), label: "Book"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined), label: "profile"),
            ]),
      );
    });
  }

}