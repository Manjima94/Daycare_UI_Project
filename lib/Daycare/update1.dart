import 'package:daycare_ui/Daycare/update2.dart';
import 'package:flutter/material.dart';

class update1 extends StatefulWidget {
  const update1({super.key});

  @override
  State<update1> createState() => _update1State();
}

class _update1State extends State<update1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 12,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70))),
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 108, 29, 72),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 40,
              color: Colors.black,
            )),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text('Activity',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: Colors.white),
            child: TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text('Time',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: Colors.white),
            child: TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text('Date',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black), color: Colors.white),
            child: TextFormField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(borderSide: BorderSide.none))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 150),
            child: ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(120, 50)),
                  elevation: MaterialStatePropertyAll(10),
                  shadowColor: MaterialStatePropertyAll(Colors.black),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 87, 56, 223))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Update2(),
                    ));
              },
              child: Text(
                'Update',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
