import 'package:daycare_ui/Parent/babyprof.dart';
import 'package:daycare_ui/Parent/home.dart';
import 'package:daycare_ui/Parent/profile.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List<dynamic> option = [Home(), Babyprofile(), Babyprofile(), Profile()];

  int index = 0;
  void ontap(int ind) {
    setState(() {
      index = ind;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle,
                color: Colors.black,
                size: 30,
              ),
              label: 'Activity'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.child_care,
                color: Colors.black,
                size: 30,
              ),
              label: 'My Child'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
              label: 'Profile'),
        ],
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: ontap,
      ),
      body: option.elementAt(index),
    );
  }
}
