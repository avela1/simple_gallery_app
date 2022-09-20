import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;

  const MyBottomBar({Key? key, required this.index, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.white,
      iconSize: 25,
      unselectedItemColor: Colors.grey.shade500,
      backgroundColor: Colors.transparent,
      onTap: onTap,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: 'Notifications'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Info'),
      ],
    );
  }
}
