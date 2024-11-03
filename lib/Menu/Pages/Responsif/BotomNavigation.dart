import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.article, color: Color(0xFFF7BA20)),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book, color: Color(0xFFF7BA20)),
          label: 'Book',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite, color: Color(0xFFF7BA20)),
          label: 'Like',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Color(0xFFF7BA20)),
          label: 'Profile',
        ),
      ],
    );
  }
}
