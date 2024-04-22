// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Admin/login.dart';
import 'package:daycare_ui/login.dart';
import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: 900,
          width: 420,
          child: Image(
            image: AssetImage('images/logo.png'),
            fit: BoxFit.cover,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 290, top: 20),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login2(),
                    ));
              },
              child: Text(
                'Admin',
                style: TextStyle(
                    fontFamily: 'Rosarivo',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            )),
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Image(image: AssetImage('images/Ellipse.png')),
              ),
              Text(
                'TinyTots Care',
                style: TextStyle(
                    fontFamily: 'IngridDarling',
                    fontSize: 55,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white54),
                      fixedSize: MaterialStatePropertyAll(Size(270, 60)),
                      shape: MaterialStatePropertyAll(LinearBorder())),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Center(
                      child: Text(
                    'Start',
                    style: TextStyle(
                      fontFamily: 'Fruktur',
                      color: Colors.black,
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
