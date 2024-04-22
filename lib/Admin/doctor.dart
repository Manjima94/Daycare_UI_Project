// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 97, 101, 220),
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.keyboard_arrow_left_sharp,
                ),
                iconSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  'Doctors',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/doc.png'),
                      radius: 40,
                    ),
                    title: Text(
                      'Dr.Sarah',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'InriaSerif',
                          fontWeight: FontWeight.w400),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete_outline_outlined,
                      ),
                      iconSize: 30,
                    ),
                  );
                  // ignore: dead_code
                },
              ),
            ),
            // Container(
            //   height: 60,
            //   width: 350,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: Color.fromARGB(59, 105, 97, 97)),
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //         Text(
            //           'Dr.Deepak',
            //           style: TextStyle(fontSize: 25),
            //         ),
            //         ElevatedButton(
            //             style: ButtonStyle(
            //                 shape: MaterialStatePropertyAll(
            //                     RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(5))),
            //                 backgroundColor:
            //                     MaterialStatePropertyAll(Colors.red)),
            //             onPressed: () {},
            //             child: Text(
            //               'Reject',
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             )),
            //         ElevatedButton(
            //             style: ButtonStyle(
            //                 shape: MaterialStatePropertyAll(
            //                     RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(5))),
            //                 backgroundColor:
            //                     MaterialStatePropertyAll(Colors.green)),
            //             onPressed: () {},
            //             child: Text(
            //               'Accept',
            //               style: TextStyle(
            //                 color: Colors.white,
            //               ),
            //             ))
            //       ]),
            // )
          ],
        ),
      ),
    );
  }
}
