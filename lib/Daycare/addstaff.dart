import 'package:flutter/material.dart';

class AddStaff extends StatefulWidget {
  const AddStaff({super.key});

  @override
  State<AddStaff> createState() => _AddStaffState();
}

class _AddStaffState extends State<AddStaff> {
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
                      hintText: 'Staff Name',
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
                        hintText: 'Qualification',
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
                    Navigator.of(
                      context,
                    ).pop();
                  },
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'InriaSerif',
                          fontSize: 40,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
