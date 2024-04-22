// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/cat.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'images/login.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60, top: 10),
                    child: Text('Login',
                        style: TextStyle(
                            fontFamily: 'RubikGlitch',
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 50),
                    child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: TextFormField(
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'enter a valid email';
                            }
                            if (RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!)) {
                              return 'contain atleast one number,@';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: ' Email',
                              hintStyle: TextStyle(color: Colors.black38),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 60),
                    child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'incorrect password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: ' Password',
                              hintStyle: TextStyle(color: Colors.black38),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 200,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 54, 51, 227),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Cat(),
                              ));
                        },
                        child: Text(
                          'Create Account?',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
