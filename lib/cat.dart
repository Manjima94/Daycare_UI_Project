// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Babysitters/register.dart';
import 'package:daycare_ui/Daycare/register.dart';
import 'package:daycare_ui/Doctor/registration.dart';
import 'package:daycare_ui/Parent/register.dart';
import 'package:flutter/material.dart';

class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Icon(Icons.call),
                    ),
                    Text(
                      'Childline Number :1098',
                      style: TextStyle(fontSize: 17),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Register(),
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
                          builder: (context) => Registration(),
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
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationD(),
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
                        color: Color.fromARGB(255, 103, 212, 201)),
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
                          builder: (context) => Registerc(),
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
                        color: Color.fromARGB(255, 176, 238, 84)),
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
              ]),
        ));
  }
}
