// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Parent/bottom.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Enroll extends StatefulWidget {
  const Enroll({super.key});

  @override
  State<Enroll> createState() => _EnrollState();
}

class _EnrollState extends State<Enroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 27, 149, 139),
        title: Column(children: const [
          Text(
            'Little Kids',
            style: TextStyle(
                fontFamily: 'InriaSerif',
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w400),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.star,
              size: 30,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              size: 30,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              size: 30,
              color: Colors.amber,
            )
          ])
        ]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 350,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Child Name',
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                    enabledBorder: OutlineInputBorder()),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(5)),
              height: 130,
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Adress',
                  hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                ),
              ),
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Pincode',
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                    enabledBorder: OutlineInputBorder()),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 28),
                  child: Text(
                    'Date Of Birth',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 4),
                  child: SizedBox(
                      height: 22,
                      width: 20,
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                ),
                SizedBox(
                    height: 22,
                    width: 20,
                    child: TextFormField(
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 4),
                  child: SizedBox(
                      height: 22,
                      width: 20,
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                ),
                SizedBox(
                    height: 22,
                    width: 20,
                    child: TextFormField(
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 5),
                  child: SizedBox(
                      height: 22,
                      width: 20,
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SizedBox(
                      height: 22,
                      width: 20,
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SizedBox(
                      height: 22,
                      width: 20,
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SizedBox(
                      height: 22,
                      width: 20,
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder()),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: SizedBox(
                width: 350,
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Blood Group',
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                      enabledBorder: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Parents Occupation',
                    hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                    enabledBorder: OutlineInputBorder()),
              ),
            ),
            DottedBorder(
              color: Colors.black54,
              strokeWidth: 2,
              dashPattern: [
                9,
              ],
              child: Container(
                width: 340,
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Image',
                      hintStyle: TextStyle(color: Colors.black26, fontSize: 17),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 22, 18, 207))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottom(),
                      ));
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}
