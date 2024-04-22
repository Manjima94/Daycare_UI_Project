// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:daycare_ui/Doctor/home.dart';
import 'package:daycare_ui/Doctor/profile.dart';
import 'package:flutter/material.dart';

class Bottomdoc extends StatefulWidget {
  const Bottomdoc({super.key});

  @override
  State<Bottomdoc> createState() => _BottomdocState();
}

class _BottomdocState extends State<Bottomdoc> {
  int _selectedIndex = 0;
  List options = [Homedoc(), Profile()];

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
