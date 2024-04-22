// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Parent/add.dart';
import 'package:flutter/material.dart';

class Record extends StatefulWidget {
  const Record({super.key});

  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        elevation: 30,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))),
        backgroundColor: Color.fromARGB(255, 30, 141, 168),
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 40,
                color: Colors.black,
              )),
        ),
        title: Center(
          child: Text(
            'Health Record',
            style: TextStyle(
                fontFamily: 'InriaSerif',
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 20),
                    child: Text('height',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text('weight',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text('Growth Rate',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                  ),
                  Text('Temperature',
                      style: TextStyle(
                          fontFamily: 'InriaSerif',
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 20),
                    child: Text('90cm',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text('14.29kg',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text('Normal',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 20,
                            fontWeight: FontWeight.w400)),
                  ),
                  Text('Normal',
                      style: TextStyle(
                          fontFamily: 'InriaSerif',
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(10),
                    shadowColor: MaterialStatePropertyAll(Colors.black),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 35, 70, 246))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Add(),
                      ));
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )),
          )
        ],
      ),
    );
  }
}
