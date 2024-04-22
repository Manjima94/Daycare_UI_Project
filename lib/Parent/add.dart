// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
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
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Height',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border:
                        Border.all(color: const Color.fromARGB(66, 93, 91, 91)),
                    color: Colors.white),
                child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Weight',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border:
                        Border.all(color: const Color.fromARGB(66, 93, 91, 91)),
                    color: Colors.white),
                child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Other',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
              ),
              Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border:
                        Border.all(color: const Color.fromARGB(66, 93, 91, 91)),
                    color: Colors.white),
                child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 130),
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(10),
                        shadowColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 35, 70, 246))),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Done',
                      style: TextStyle(
                          fontFamily: 'InriaSerif',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )),
              )
            ],
          ),
        ));
  }
}
