import 'package:flutter/material.dart';

class Update2 extends StatefulWidget {
  const Update2({super.key});

  @override
  State<Update2> createState() => _Update2State();
}

class _Update2State extends State<Update2> {
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
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 30),
          child: Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white, border: Border.all(color: Colors.black)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Song',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
                Column(
                  children: [
                    Text(
                      '06/02/2023',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '2:00pm',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
