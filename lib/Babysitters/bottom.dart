import 'package:daycare_ui/Babysitters/home.dart';
import 'package:daycare_ui/Babysitters/profile.dart';
import 'package:flutter/material.dart';

class Bottombaby extends StatefulWidget {
  const Bottombaby({super.key});

  @override
  State<Bottombaby> createState() => _BottombabyState();
}

class _BottombabyState extends State<Bottombaby> {
  int _selectedIndex = 0;
  List options = [Homebaby(), Profilebaby()];

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
