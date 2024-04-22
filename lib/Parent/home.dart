// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Parent/Doctor.dart';
import 'package:daycare_ui/Parent/food.dart';
import 'package:daycare_ui/Parent/teacher.dart';
import 'package:daycare_ui/cat.dart';
import 'package:daycare_ui/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.black,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(7),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cat(),
                      ));
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                )),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Food(),
                      ));
                },
                child: Container(
                  height: 150,
                  width: 325,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 223, 195, 18)),
                  child: Row(
                    children: [
                      Image.asset('images/food.png'),
                      Text(
                        'FOOD',
                        style: TextStyle(
                            fontFamily: 'IrishGrover',
                            color: Color.fromARGB(255, 232, 204, 167),
                            fontSize: 60,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Teacher(),
                    ));
              },
              child: Container(
                height: 150,
                width: 325,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(255, 218, 70, 57)),
                child: Row(
                  children: [
                    Image.asset('images/teach.png'),
                    Text(
                      'TEACHER',
                      style: TextStyle(
                          fontFamily: 'IrishGrover',
                          color: Color.fromARGB(255, 232, 204, 167),
                          fontSize: 48,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Doctor(),
                      ));
                },
                child: Container(
                  height: 150,
                  width: 325,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 25, 93, 157)),
                  child: Row(
                    children: [
                      Image.asset('images/doctor.png'),
                      Text(
                        'DOCTOR',
                        style: TextStyle(
                            fontFamily: 'IrishGrover',
                            color: Color.fromARGB(255, 32, 149, 195),
                            fontSize: 56,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
