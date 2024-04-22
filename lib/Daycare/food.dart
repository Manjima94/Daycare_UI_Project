// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Foodc extends StatefulWidget {
  const Foodc({super.key});

  @override
  State<Foodc> createState() => _FoodcState();
}

class _FoodcState extends State<Foodc> {
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
            child: Text(
              'Food',
              style: TextStyle(
                  fontFamily: 'GravitasOne',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        body: ListView(children: [
          Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    'Monday',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 2),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Breakfast',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Lunch',
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 3),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Snack',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    'Tuesday',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 2),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Breakfast',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Lunch',
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 3),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Snack',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Wednesday',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 2),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Breakfast',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Lunch',
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 3),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Snack',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Thursday',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 2),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Breakfast',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Lunch',
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 3),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Snack',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Friday',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 2),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Breakfast',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Lunch',
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 3),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Snack',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Saturday',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 2),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Breakfast',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Lunch',
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 5),
                        blurRadius: 3),
                  ], color: Colors.white),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: 'Snack',
                        hintStyle: TextStyle(color: Colors.black54)),
                  ),
                ),
              ]))
        ]));
  }
}
