import 'package:flutter/material.dart';
import 'package:rioding_app/Menu/Pages/BookPage.dart';
import 'package:rioding_app/Menu/Pages/LikePage.dart';
import 'package:rioding_app/Menu/Pages/NewsPage.dart';
import 'package:rioding_app/Menu/Pages/ProfilPage.dart';
import 'package:rioding_app/Menu/Pages/Responsif/Book2Page.dart';

import 'Pages/Responsif/BotomNavigation.dart';
import 'Pages/Responsif/RailNavigation.dart';



class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Bookpage(),
    Likepage(),
    Newspage(),
    ProfilPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isTablet = constraints.maxWidth > 600;

        return Scaffold(
          body: Row(
            children: [
              if (isTablet)
                CustomNavigationRail(
                  selectedIndex: _selectedIndex,
                  onItemTapped: _onItemTapped,
                ),
              Expanded(
                child: _pages[_selectedIndex],
              ),
            ],
          ),
          bottomNavigationBar: !isTablet
              ? CustomBottomNavigationBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          )
              : null,
        );
      },
    );
  }
}
