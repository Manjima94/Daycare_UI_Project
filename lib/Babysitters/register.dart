// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Babysitters/login.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 8,
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: Color.fromARGB(255, 100, 14, 171),
        title: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
            child: Image.asset(
              'images/Ellipse.png',
              fit: BoxFit.contain,
            )),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: ' Name',
                            hintStyle:
                                TextStyle(color: Colors.black26, fontSize: 17),
                            enabledBorder: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Adress',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5)),
                      height: 130,
                      width: 350,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Adress',
                          hintStyle:
                              TextStyle(color: Colors.black26, fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Pincode',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Pincode',
                            hintStyle:
                                TextStyle(color: Colors.black26, fontSize: 17),
                            enabledBorder: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 10),
                      child: Row(
                        children: [
                          Text(
                            'Date Of Birth',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
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
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder()),
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
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder()),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Experience',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(5)),
                      height: 130,
                      width: 350,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Experience',
                          hintStyle:
                              TextStyle(color: Colors.black26, fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Id Proof Number ',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Id Proof Number',
                              hintStyle: TextStyle(
                                  color: Colors.black26, fontSize: 17),
                              enabledBorder: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              hintStyle: TextStyle(
                                  color: Colors.black26, fontSize: 17),
                              enabledBorder: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(255, 22, 18, 207))),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => Bottom(),
                          //     ));
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
            ],
          ),
          Container(
            height: 80,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                  color: Colors.black54,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 22, 18, 207))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginbaby(),
                            ));
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 25),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
