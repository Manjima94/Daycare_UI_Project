// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Babysitters/bottom.dart';
import 'package:daycare_ui/Babysitters/children.dart';
import 'package:flutter/material.dart';

class Children extends StatefulWidget {
  const Children({super.key});

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bottombaby(),
                ));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 50,
            color: Colors.black54,
          ),
        ),
        title: Text(
          'My Children',
          style: TextStyle(
              fontFamily: 'InriaSerif',
              fontWeight: FontWeight.w400,
              fontSize: 40),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 90),
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                    fixedSize: MaterialStatePropertyAll(Size(320, 150)),
                    shadowColor: MaterialStatePropertyAll(Colors.black),
                    elevation: MaterialStatePropertyAll(5),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.yellow[200])),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Children1(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              alignment: Alignment.centerLeft,
                              image: AssetImage(
                                'images/baby (2).png',
                              ),
                              fit: BoxFit.contain)),
                    ),
                    Column(
                      children: [
                        Text(
                          'Jeni',
                          style: TextStyle(
                              fontFamily: 'InriaSerif',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 40),
                        ),
                        Text(
                          ' Female',
                          style: TextStyle(
                              fontFamily: 'InriaSerif',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 40),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
                  fixedSize: MaterialStatePropertyAll(Size(320, 150)),
                  shadowColor: MaterialStatePropertyAll(Colors.black),
                  elevation: MaterialStatePropertyAll(5),
                  backgroundColor: MaterialStatePropertyAll(Colors.amber[300])),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Children(),
                    ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage(
                              'images/male.png',
                            ),
                            fit: BoxFit.contain)),
                  ),
                  Column(
                    children: [
                      Text(
                        'Alen',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                      Text(
                        ' Male',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
