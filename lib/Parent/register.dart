// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Admin/login.dart';
import 'package:daycare_ui/Parent/login.dart';
import 'package:daycare_ui/Parent/search.dart';
import 'package:daycare_ui/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Container(
                  height: 200,
                  width: 340,
                  child: Image.asset(
                    'images/day.png',
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
                height: 55,
                width: 320,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Parent Name',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black38),
                      enabledBorder: OutlineInputBorder()),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 70),
              child: SizedBox(
                  height: 55,
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Phone',
                        hintStyle:
                            TextStyle(fontSize: 20, color: Colors.black38),
                        enabledBorder: OutlineInputBorder()),
                  )),
            ),
            SizedBox(
                height: 55,
                width: 320,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black38),
                      enabledBorder: OutlineInputBorder()),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: SizedBox(
                height: 58,
                width: 280,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 29, 100, 95)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Search(),
                          ));
                    },
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'InriaSerif',
                            fontSize: 40,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginP(),
                            ));
                      },
                      child: Text('Login',
                          style: TextStyle(
                            fontSize: 17,
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
