// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Adress',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    color: Colors.black,
                    fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                height: 130,
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'DOB',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    color: Colors.black,
                    fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                      enabledBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.zero)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Parents Occupation',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    color: Colors.black,
                    fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: 350,
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                      enabledBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.zero)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Photo',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    color: Colors.black,
                    fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintStyle:
                                TextStyle(color: Colors.black26, fontSize: 17),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    Icon(Icons.edit_square)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 120),
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(10),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 35, 70, 246))),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).pop();
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  )),
            )
          ]),
        ));
  }
}
