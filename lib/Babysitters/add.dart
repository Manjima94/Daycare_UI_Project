import 'dart:ui';

import 'package:daycare_ui/Babysitters/Activity.dart';
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
        shadowColor: Colors.black,
        elevation: 8,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 100, 14, 171),
        leading: IconButton(
          onPressed: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Bottombaby(),
            //     ));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 40,
            color: Colors.black,
          ),
        ),
        leadingWidth: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Date',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: ' Date',
                hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                enabledBorder: OutlineInputBorder()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Time',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: ' Time',
                hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                enabledBorder: OutlineInputBorder()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Activity',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: ' Activity',
                hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                enabledBorder: OutlineInputBorder()),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      fixedSize: MaterialStatePropertyAll(Size(130, 45)),
                      backgroundColor: MaterialStatePropertyAll(
                          const Color.fromARGB(255, 27, 76, 209))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Activity(),
                        ));
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
