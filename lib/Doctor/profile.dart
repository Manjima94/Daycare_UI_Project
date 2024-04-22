// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Doctor/edit.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 166, 212, 250),
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 40,
                color: Colors.white,
              ),
            ),
            actions: [
              SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Edit',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Edit(),
                            ));
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              )
            ]),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              SizedBox(
                height: 180,
                width: 430,
              ),
              Container(
                height: 70,
                width: 430,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 5),
                      blurRadius: 3),
                ], color: Color.fromARGB(255, 166, 212, 250)),
              ),
              Positioned(
                  top: 20,
                  left: 35,
                  child: Container(
                    height: 130,
                    width: 350,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Colors.white),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.bottomRight,
                            height: 100,
                            width: 120,
                            child: Icon(Icons.edit_square),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'images/doc.png',
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Text(
                            'Dr.Sarah',
                            style: TextStyle(
                                fontFamily: 'HoltwoodOneSC',
                                fontSize: 20,
                                fontWeight: FontWeight.w400),
                          )
                        ]),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Visiting Time: 2:00pm to 6:00pm',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Qualification',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Specialization',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Home Address',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Office Address',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
            ]),
          )
        ]));
  }
}
