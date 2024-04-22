import 'package:daycare_ui/Daycare/bottom.dart';
import 'package:daycare_ui/Daycare/login.dart';

import 'package:flutter/material.dart';

class Registerc extends StatefulWidget {
  const Registerc({super.key});

  @override
  State<Registerc> createState() => _RegistercState();
}

class _RegistercState extends State<Registerc> {
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
                      hintText: 'Preschool Name',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black38),
                      enabledBorder: OutlineInputBorder()),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
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
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: SizedBox(
                  height: 55,
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Preschool Adress',
                        hintStyle:
                            TextStyle(fontSize: 20, color: Colors.black38),
                        enabledBorder: OutlineInputBorder()),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      elevation: MaterialStatePropertyAll(8),
                      fixedSize: MaterialStatePropertyAll(Size(280, 58)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 29, 100, 95)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bottomc(),
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
                              builder: (context) => Loginc(),
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
