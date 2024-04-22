import 'package:daycare_ui/Daycare/Home.dart';
import 'package:daycare_ui/Daycare/profile.dart';
import 'package:flutter/material.dart';

class bottomc extends StatefulWidget {
  const bottomc({super.key});

  @override
  State<bottomc> createState() => _bottomcState();
}

class _bottomcState extends State<bottomc> {
  int _selectedIndex = 0;
  List options = [Homecare(), Profilec()];

  void ontap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: options.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'HOME'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: 'PROFILE')
          ],
          iconSize: 30,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: ontap,
        ));
  }
}
