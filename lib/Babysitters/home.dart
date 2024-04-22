// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:daycare_ui/Babysitters/Activity.dart';
import 'package:daycare_ui/Babysitters/Mychildren.dart';
import 'package:daycare_ui/Babysitters/menu.dart';
import 'package:daycare_ui/cat.dart';
import 'package:flutter/material.dart';

class Homebaby extends StatefulWidget {
  const Homebaby({super.key});

  @override
  State<Homebaby> createState() => _HomebabyState();
}

class _HomebabyState extends State<Homebaby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(alignment: Alignment.topRight, children: [
            SizedBox(
              width: 420,
              child: Image.asset(
                'images/kids.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              width: 140,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13))),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      elevation: MaterialStatePropertyAll(5),
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cat(),
                        ));
                  },
                  child: Row(
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontFamily: 'RobotoSerif',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.black,
                      )
                    ],
                  )),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 80,
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      elevation: MaterialStatePropertyAll(5),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.cyan[200])),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Menu(),
                        ));
                  },
                  child: Text(
                    'Menu',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: 150,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      elevation: MaterialStatePropertyAll(5),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 231, 131, 31))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Activity(),
                        ));
                  },
                  child: Text(
                    'Activity',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
            width: 155,
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  shadowColor: MaterialStatePropertyAll(Colors.black),
                  elevation: MaterialStatePropertyAll(5),
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.purple[300])),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Children(),
                    ));
              },
              child: Text(
                'My Children',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 19),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
