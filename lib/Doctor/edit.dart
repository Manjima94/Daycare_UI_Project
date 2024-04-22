// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
        backgroundColor: Color.fromARGB(255, 166, 212, 250),
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        shadowColor: Colors.black,
        elevation: 5,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 40,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Visiting  Time',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 360,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.zero)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Qualification ',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 360,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.zero)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Specialization',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: TextFormField(
                  decoration: InputDecoration(
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Home Address',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: TextFormField(
                  decoration: InputDecoration(
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none))),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              child: Row(
                children: [
                  Text(
                    'Office Address',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(border: Border.all()),
              child: TextFormField(
                  decoration: InputDecoration(
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none))),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 56, 91, 232))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Update',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
