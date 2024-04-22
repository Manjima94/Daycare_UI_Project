// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:daycare_ui/Parent/appointmnt.dart';
import 'package:flutter/material.dart';

class Doc1 extends StatefulWidget {
  const Doc1({super.key});

  @override
  State<Doc1> createState() => _Doc1State();
}

class _Doc1State extends State<Doc1> {
  var name = TextEditingController();
  var age = TextEditingController();

  var d;
  DateTime? selecteddate;
  void pickdate() async {
    d = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000, 12, 31),
        lastDate: DateTime(3000, 1, 1));
    setState(() {
      selecteddate = d;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 40,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 180,
                width: 430,
              ),
              Container(
                height: 90,
                width: 430,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 3),
                    ],
                    color: Colors.blue[100]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 170),
                  child: Text(
                    'Booking',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                  top: 40,
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
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 30),
            child: Text(
              'Select a Date',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 30),
            child: SizedBox(
              width: 300,
              height: 35,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(LinearBorder()),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue[100])),
                  onPressed: () async {
                    await showDatePicker(
                        context: context,
                        firstDate: DateTime(2000, 1, 1),
                        lastDate: DateTime(2025, 1, 1),
                        currentDate: DateTime.now(),
                        initialEntryMode: DatePickerEntryMode.calendarOnly);

                    pickdate();
                    if (d != null) {
                      print(d);
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Please Select Date ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        '  OK ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 200),
            child: Container(
                width: 300,
                height: 30,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 5),
                      blurRadius: 3),
                ], color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Name :',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 200,
                      child: TextFormField(
                        controller: name,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 20),
            child: Container(
                width: 300,
                height: 30,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 5),
                      blurRadius: 3),
                ], color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Age :',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 200,
                      child: TextFormField(
                        validator: (value) {
                         if (value!.isEmpty) return 'enter age';

                        },
                        
                        controller: age,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              width: 430,
              height: 34,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue[100])),
                  onPressed: () {
                    setState(() {
                      name.text.isEmpty ? print('enetr name') : print(name);
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Appointment(),
                        ));
                  },
                  child: Text(
                    'Book Appointment',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
