// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Daycare/activity.dart';
import 'package:daycare_ui/Daycare/children.dart';
import 'package:daycare_ui/Daycare/food.dart';
import 'package:daycare_ui/Daycare/mystaff.dart';
import 'package:daycare_ui/Daycare/parentreq.dart';
import 'package:daycare_ui/cat.dart';
import 'package:flutter/material.dart';

class Homecare extends StatefulWidget {
  const Homecare({super.key});

  @override
  State<Homecare> createState() => _HomecareState();
}

class _HomecareState extends State<Homecare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 12,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 108, 29, 72),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My School',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'InriaSerif',
                  fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    fixedSize: MaterialStatePropertyAll(Size(120, 40)),
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 105, 23, 68),
                    )),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cat(),
                      ));
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyStaff(),
                    ));
              },
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 2)
                    ],
                    border: Border.all(color: Colors.black12),
                    color: Color.fromARGB(255, 245, 189, 189)),
                child: Center(
                  child: Text(
                    'My Staff',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 40,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ParentReq(),
                    ));
              },
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 2)
                    ],
                    border: Border.all(color: Colors.black12),
                    color: Color.fromARGB(255, 200, 241, 203)),
                child: Center(
                  child: Text(
                    'Parent Request',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 40,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Children(),
                    ));
              },
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 2)
                    ],
                    border: Border.all(color: Colors.black12),
                    color: Color.fromARGB(255, 186, 191, 239)),
                child: Center(
                  child: Text(
                    'Children',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 40,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ActivityC(),
                    ));
              },
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 2)
                    ],
                    border: Border.all(color: Colors.black12),
                    color: Color.fromARGB(255, 203, 182, 127)),
                child: Center(
                  child: Text(
                    ' Activity',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 40,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Foodc(),
                    ));
              },
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 2)
                    ],
                    border: Border.all(color: Colors.black12),
                    color: Color.fromARGB(255, 216, 196, 130)),
                child: Center(
                  child: Text(
                    'Food Add',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 40,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
