// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:daycare_ui/Admin/babysiter.dart';
import 'package:daycare_ui/Admin/daycare.dart';
import 'package:daycare_ui/Admin/doctor.dart';
import 'package:daycare_ui/Admin/logo.dart';
import 'package:daycare_ui/Admin/parents.dart';
import 'package:flutter/material.dart';

class Categori extends StatefulWidget {
  const Categori({super.key});

  @override
  State<Categori> createState() => _CategoriState();
}

class _CategoriState extends State<Categori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Center(
          child: Container(
            height: 50,
            width: 250,
            color: const Color.fromARGB(255, 159, 211, 224),
            child: const Center(
                child: Text(
              'Select Category',
              style: TextStyle(fontWeight: FontWeight.w600),
            )),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Parents(),
                    ));
              },
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                   boxShadow: [
                BoxShadow(
                    color: Colors.black45, offset: Offset(0, 5), blurRadius: 2)
              ],
                    border: Border.all(color: Colors.black12),
                    color: Color.fromARGB(255, 230, 173, 240)),
                child: Center(
                  child: Text(
                    'Parents',
                    style: TextStyle(
                        fontFamily: 'GravitasOne',
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Babysiter(),
                    ));
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Babysiter(),
                      ));
                },
                child: Container(
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                     boxShadow: [
                BoxShadow(
                    color: Colors.black45, offset: Offset(0, 5), blurRadius: 2)
              ],
                      border: Border.all(color: Colors.black12),
                      color: Color.fromARGB(255, 253, 243, 158)),
                  child: Center(
                    child: Text(
                      'Babysitters',
                      style: TextStyle(
                          fontFamily: 'GravitasOne',
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Doctor(),
                    ));
              },
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                   boxShadow: [
                BoxShadow(
                    color: Colors.black45, offset: Offset(0, 5), blurRadius: 2)
              ],
                  border: Border.all(color: Colors.black12),
                  color: Color.fromARGB(255, 168, 203, 232),
                ),
                child: Center(
                  child: Text(
                    'Doctors',
                    style: TextStyle(
                        fontFamily: 'GravitasOne',
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Daycare(),
                    ));
              },
              child: Container(
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                   boxShadow: [
                BoxShadow(
                    color: Colors.black45, offset: Offset(0, 5), blurRadius: 2)
              ],
                    border: Border.all(color: Colors.black12),
                    color: Color.fromARGB(255, 97, 235, 203)),
                child: Center(
                  child: Text(
                    'Day care',
                    style: TextStyle(
                        fontFamily: 'GravitasOne',
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 140,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Logo(),
                        ));
                  },
                  child: Row(
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_sharp,
                        color: Colors.black,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
