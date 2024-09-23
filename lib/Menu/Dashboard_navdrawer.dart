import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Menu/Controller/Dashboard%20Controller.dart';
import 'package:rioding_app/Menu/Pages/BookPage.dart';
import 'package:rioding_app/Menu/Pages/NewsPage.dart';
import 'package:rioding_app/Menu/Pages/ProfilPage.dart';

class DashboardNavdrawer extends StatelessWidget {
  const DashboardNavdrawer({super.key});


  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
    Get.put(DashboardController());


    final List<Widget> menus = [Newspage(), Bookpage(), ProfilPage()];

    return Obx( () => Scaffold(
        appBar: AppBar(
          title: Text("Navigation Example"),
        ),
        body: menus[dashboardController.selectedIndex.value],
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              "Menu",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text("Home"),
          onTap: () {
            dashboardController.changeMenu(0);
            Navigator.pop(context);
          },
        ),
            ],
          ),
        ),
      )

    );
  }
}
