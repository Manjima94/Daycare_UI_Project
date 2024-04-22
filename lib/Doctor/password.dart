import 'package:daycare_ui/Doctor/login.dart';
import 'package:flutter/material.dart';

class Passworddoc extends StatefulWidget {
  const Passworddoc({super.key});

  @override
  State<Passworddoc> createState() => _PassworddocState();
}

class _PassworddocState extends State<Passworddoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                'images/Ellipse.png',
                fit: BoxFit.cover,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 180, bottom: 5, top: 40),
            child: Text(
              'New Password',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
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
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 150, bottom: 5, top: 80),
            child: Text(
              'Confirm Password',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
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
                    hintText: ' Confirm Password',
                    hintStyle: TextStyle(color: Colors.black38),
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 54, 51, 227),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Logindoc(),
                      ));
                },
                child: Text(
                  'Done',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300, top: 150),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                )),
          )
        ],
      )),
    );
  }
}
