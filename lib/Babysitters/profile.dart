// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:daycare_ui/Babysitters/bottom.dart';
import 'package:daycare_ui/Babysitters/edit.dart';
import 'package:flutter/material.dart';

class Profilebaby extends StatefulWidget {
  const Profilebaby({super.key});

  @override
  State<Profilebaby> createState() => _ProfilebabyState();
}

class _ProfilebabyState extends State<Profilebaby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bottombaby(),
                ));
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
        actions: [
          Row(
            children: [
              Text(
                'Edit',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
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
                    size: 17,
                  ))
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 15),
            child: Text(
              'Address',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Text(
            'Occupation',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 17, fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              'Phone Number',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              'Whatsapp Number',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 17,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ]),
      ),
    );
  }
}
