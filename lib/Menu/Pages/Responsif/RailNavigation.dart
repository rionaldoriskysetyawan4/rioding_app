import 'package:flutter/material.dart';

class CustomNavigationRail extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomNavigationRail({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onItemTapped,
      labelType: NavigationRailLabelType.all,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.book, color: Color(0xFFF7BA20)),
          label: Text('Book'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.favorite, color: Color(0xFFF7BA20)),
          label: Text('Like'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.article, color: Color(0xFFF7BA20)),
          label: Text('News'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.person, color: Color(0xFFF7BA20)),
          label: Text('Profile'),
        ),
      ],
    );
  }
}
