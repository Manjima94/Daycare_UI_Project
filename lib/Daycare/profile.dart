// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Profilec extends StatefulWidget {
  const Profilec({super.key});

  @override
  State<Profilec> createState() => _ProfilecState();
}

class _ProfilecState extends State<Profilec> {
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
        leading: Icon(
          Icons.arrow_back_ios,
          size: 40,
        ),
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(
                fontFamily: 'GravitasOne',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(children: [
          Row(
            children: [
              Icon(
                Icons.home_work_outlined,
                size: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Name',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    'Little Kids',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            indent: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.info,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'About',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    'Always Available',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            indent: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  size: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Phone ',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    '904867676899',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Icon(
                  Icons.edit,
                  size: 20,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            indent: 50,
          ),
        ]),
      ),
    );
  }
}
