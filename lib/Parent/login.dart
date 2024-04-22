import 'package:daycare_ui/Parent/password.dart';
import 'package:daycare_ui/Parent/search.dart';
import 'package:flutter/material.dart';

class LoginP extends StatefulWidget {
  const LoginP({super.key});

  @override
  State<LoginP> createState() => _LoginPState();
}

class _LoginPState extends State<LoginP> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Stack(
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 90),
                  child: Text('Login',
                      style: TextStyle(
                          fontFamily: 'RubikGlitch',
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55, top: 70),
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
                  padding: const EdgeInsets.only(left: 55, top: 60),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Password(),
                            ));
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 70,
                  ),
                  child: FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 54, 51, 227),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Search(),
                          ));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
