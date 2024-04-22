// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Parent/dailytask.dart';
import 'package:daycare_ui/Parent/record.dart';
import 'package:flutter/material.dart';

class Babyprofile extends StatefulWidget {
  const Babyprofile({super.key});

  @override
  State<Babyprofile> createState() => _BabyprofileState();
}

class _BabyprofileState extends State<Babyprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: 410,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                        color: Colors.black,
                      )),
                  Image.asset(
                    'images/babyprof.png',
                    fit: BoxFit.contain,
                  ),
                ],
              )),
        ],
      ),
      Container(
        height: 150,
        width: 350,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black45, offset: Offset(0, 5), blurRadius: 5)
        ]),
        child: Column(
          children: [
            Text(
              'My Child',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset('images/baby (2).png'),
                    Text('jeni',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontWeight: FontWeight.w500,
                            fontSize: 17)),
                    Text('Female'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, bottom: 30),
                  child: Column(children: [
                    Text('Blood Group  A+'),
                    Text('04/04/2014'),
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 64,
              width: 180,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 231, 86, 204))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Record(),
                        ));
                  },
                  child: Text(
                    'Health Record',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )),
            ),
            SizedBox(
              height: 64,
              width: 180,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 106, 190, 90))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Task(),
                        ));
                  },
                  child: Text(
                    'Daily Task',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )),
            )
          ],
        ),
      ),
    ]));
  }
}
