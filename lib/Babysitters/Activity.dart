// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:daycare_ui/Babysitters/add.dart';
import 'package:daycare_ui/Babysitters/bottom.dart';
import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
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
            size: 40,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Students',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'images/baby (2).png',
                          ),
                          fit: BoxFit.cover)),
                ),
                Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage(
                            'images/male.png',
                          ),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            const Divider(
              color: Colors.black45,
              height: 30,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Time : ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Today,2:55pm',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 17,
                            color: Colors.purple,
                            fontWeight: FontWeight.w600),
                      ),
                    ]),
                Icon(
                  Icons.edit,
                  size: 20,
                ),
              ],
            ),
            const Divider(
              color: Colors.black45,
              height: 30,
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Photo',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.close,
                  size: 30,
                ),
              ],
            ),
            Image.asset(
              'images/menu.png',
              width: 420,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                'Note',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              'They are playing together 😊',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 17,
                  fontWeight: FontWeight.w300),
            ),
            const Divider(
              color: Colors.black45,
              thickness: 2,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(300, 40)),
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 100, 14, 171),
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Add(),
                          ));
                    },
                    child: Text(
                      'Add Activity',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
