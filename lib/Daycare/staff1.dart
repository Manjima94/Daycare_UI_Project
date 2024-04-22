import 'package:flutter/material.dart';

class Staff1 extends StatefulWidget {
  const Staff1({super.key});

  @override
  State<Staff1> createState() => _Staff1State();
}

class _Staff1State extends State<Staff1> {
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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 40,
          ),
        ),
        title: Center(
          child: Column(
            children: [
              Text(
                'Dayana ',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Staff ',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Number Of Students : 10 ',
              style: TextStyle(
                  fontFamily: 'InriaSerif',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Duty Time:10:00 to 3:00',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
