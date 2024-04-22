// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:daycare_ui/cat.dart';
import 'package:flutter/material.dart';

class Homedoc extends StatefulWidget {
  const Homedoc({super.key});

  @override
  State<Homedoc> createState() => _HomedocState();
}

class _HomedocState extends State<Homedoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 166, 212, 250),
            automaticallyImplyLeading: false,
            actions: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cat(),
                      ));
                },
                child: Container(
                    height: 30,
                    width: 120,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ], color: Color.fromARGB(255, 166, 212, 250)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Logout',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        Icon(
                          Icons.arrow_forward_sharp,
                          color: Colors.black,
                        )
                      ],
                    )),
              ),
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
                            height: 100,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'images/doc.png',
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dr.Sarah',
                                style: TextStyle(
                                    fontFamily: 'HoltwoodOneSC',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                'Visiting Time',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                '11:30am-3:30pm',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ]),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name : Jeni',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    'Date : october / 12 / 12',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 25,
                    width: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 192, 223, 248)),
                            shadowColor: MaterialStatePropertyAll(Colors.black),
                            elevation: MaterialStatePropertyAll(5)),
                        onPressed: () {},
                        child: Text(
                          'Approve',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 25,
                      width: 100,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.redAccent),
                              shadowColor:
                                  MaterialStatePropertyAll(Colors.black),
                              elevation: MaterialStatePropertyAll(7)),
                          onPressed: () {},
                          child: Text(
                            'Reject',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                  )
                ],
              )
            ],
          )
        ]));
  }
}
