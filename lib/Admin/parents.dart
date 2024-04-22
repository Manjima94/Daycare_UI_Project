// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Parents extends StatefulWidget {
  const Parents({super.key});

  @override
  State<Parents> createState() => _ParentsState();
}

class _ParentsState extends State<Parents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.keyboard_arrow_left_sharp,
                ),
                iconSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  'Parents',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/parent.png'),
                radius: 40,
              ),
              title: Text(
                'Aswathi',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'InriaSerif',
                    fontWeight: FontWeight.w400),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline_outlined,
                ),
                iconSize: 30,
              ),
            );
          },
        ),
      ),
    );
  }
}
