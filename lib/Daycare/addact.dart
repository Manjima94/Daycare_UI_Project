// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Daycare/addview.dart';
import 'package:flutter/material.dart';

class Addact extends StatefulWidget {
  const Addact({super.key});

  @override
  State<Addact> createState() => _AddactState();
}

class _AddactState extends State<Addact> {
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
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Date',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
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
                        hintText: ' Date',
                        hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            color: Colors.black26,
                            fontWeight: FontWeight.w400),
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Time',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
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
                        hintText: ' Time',
                        hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.black26,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('Activity',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
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
                        hintText: ' Activity',
                        hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 130),
                child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(120, 50)),
                        elevation: MaterialStatePropertyAll(10),
                        shadowColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 82, 139, 167))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Addview(),
                          ));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25,
                        ),
                        Text(
                          'Add',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
