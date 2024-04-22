// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leading: IconButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Bottombaby(),
              //     ));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.black,
            ),
          ),
          title: Container(
            alignment: Alignment.topRight,
            height: 60,
            width: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage(
                      'images/dayana.png',
                    ),
                    fit: BoxFit.fitHeight)),
            child: Column(
              children: [
                Text(
                  'Dayana ',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Female',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, bottom: 10),
              child: Text(
                'Address',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.zero),
              child: TextFormField(
                  decoration: InputDecoration(
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Text(
                'Occupation',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.zero))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Phone Number',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.zero))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Whatsapp Number',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderRadius: BorderRadius.zero))),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 56, 91, 232))),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Update',
                      style: TextStyle(
                          fontFamily: 'InriaSerif',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )),
              ),
            ),
          ]),
        ));
  }
}
