import 'package:daycare_ui/Doctor/bottom.dart';
import 'package:daycare_ui/Doctor/home.dart';
import 'package:daycare_ui/Doctor/login.dart';
import 'package:flutter/material.dart';

class RegistrationD extends StatefulWidget {
  const RegistrationD({super.key});

  @override
  State<RegistrationD> createState() => _RegistrationDState();
}

class _RegistrationDState extends State<RegistrationD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 8,
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: Color.fromARGB(255, 181, 218, 249),
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
              Center(
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
                        height: 55,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: ' Name',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                              enabledBorder: OutlineInputBorder()),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Qualification',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                        height: 55,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: ' Qualification',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                              enabledBorder: OutlineInputBorder()),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Specialization',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                        height: 55,
                        width: 320,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: ' Specialization',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                              enabledBorder: OutlineInputBorder()),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Home Adress',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                        height: 130,
                        width: 320,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: ' Home Adress',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Office Adress',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                        height: 130,
                        width: 320,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(8)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: ' Office Adress',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Experience',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Container(
                          height: 130,
                          width: 320,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(8)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: ' Experience',
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Colors.black38),
                            ),
                          )),
                    ),
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
                              builder: (context) => Logindoc(),
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
