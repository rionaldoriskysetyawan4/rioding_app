import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rioding_app/Menu/Controller/Dashboard%20Controller.dart';
import 'package:rioding_app/Menu/Pages/BookPage.dart';
import 'package:rioding_app/Menu/Pages/LikePage.dart';
import 'package:rioding_app/Menu/Pages/NewsPage.dart';
import 'package:rioding_app/Menu/Pages/ProfilPage.dart';


class DashboardPage extends StatelessWidget {
  final DashboardController dashboardController = Get.put(DashboardController());

  final List<Widget> pages = [

    Bookpage(),
    Likepage(),
    Newspage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Check if the screen width is greater than 600 pixels (a common threshold for tablets)
        bool isTablet = constraints.maxWidth > 600;

        return Scaffold(
          body: Row(
            children: [
              // Show a navigation rail for larger screens (e.g., tablets)
              if (isTablet)
                NavigationRail(
                  selectedIndex: dashboardController.selectedIndex.value,
                  onDestinationSelected: dashboardController.changeMenu,
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(icon: Icon(Icons.book), label: Text('Book')),
                    NavigationRailDestination(icon: Icon(Icons.favorite), label: Text('Like')),
                    NavigationRailDestination(icon: Icon(Icons.article), label: Text('News')),
                    NavigationRailDestination(icon: Icon(Icons.person), label: Text('Profile')),
                  ],
                ),

              // The main content area that changes with the selected page
              Expanded(
                child: Obx(() => pages[dashboardController.selectedIndex.value]),
              ),
            ],
          ),

          // Show a bottom navigation bar for smaller screens (e.g., phones)
          bottomNavigationBar: !isTablet
              ? Obx(() => BottomNavigationBar(
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Book'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Like'),
              BottomNavigationBarItem(icon: Icon(Icons.article), label: 'News'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
          ))
              : null,
        );
      },
    );
  }
}
