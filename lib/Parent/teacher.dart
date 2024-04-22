// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Teacher extends StatefulWidget {
  const Teacher({super.key});

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 182, 62, 62),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 50,
                color: Colors.black,
              )),
        ),
        body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Stack(children: [
              Positioned(
                child: Container(
                  height: 200,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 182, 62, 62),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 120),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 65,
                            width: 130,
                            child: Image.asset(
                              'images/teach.png',
                              fit: BoxFit.cover,
                            )),
                        Text(
                          'TEACHER',
                          style: TextStyle(
                              fontFamily: 'IrishGrover',
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 232, 143, 143)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 100,
                  child: Container(
                    height: 200,
                    width: 420,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 70,
                          width: 340,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  child: Image.asset('images/parent.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text('Name : Dayana C'),
                                      Text('Phone : 12345678')
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.call,
                                  size: 35,
                                )
                              ]),
                        ),
                        Container(
                          height: 70,
                          width: 340,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  child: Image.asset('images/doc.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text('Name : Kiran P'),
                                      Text('Phone : 12345678')
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.call,
                                  size: 35,
                                )
                              ]),
                        )
                      ],
                    ),
                  ))
            ])));
  }
}
