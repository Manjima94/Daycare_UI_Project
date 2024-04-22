import 'package:flutter/material.dart';

class Children1 extends StatefulWidget {
  const Children1({super.key});

  @override
  State<Children1> createState() => _Children1State();
}

class _Children1State extends State<Children1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: IconButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 40,
            color: Colors.black,
          ),
        ),
        title: Row(
          children: [
            Container(
              alignment: Alignment.topRight,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(
                        'images/baby (2).png',
                      ),
                      fit: BoxFit.contain)),
            ),
            Column(
              children: [
                Text(
                  'Jeni ',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Female',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 40),
              child: Text(
                'Daily Task',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              height: 50,
              width: 350,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black26, offset: Offset(0, 5), blurRadius: 3),
              ], color: Colors.white),
              child: SizedBox(
                height: 30,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                        fixedSize: MaterialStatePropertyAll(Size(100, 0)),
                        shadowColor: MaterialStatePropertyAll(Colors.black),
                        elevation: MaterialStatePropertyAll(5),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 122, 191, 248))),
                    onPressed: () {},
                    child: Text(
                      'Upload',
                      style: TextStyle(
                          fontFamily: 'InriaSerif',
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                alignment: Alignment.centerRight,
                height: 50,
                width: 350,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 5),
                      blurRadius: 3),
                ], color: Colors.white),
                child: SizedBox(
                  height: 30,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          fixedSize: MaterialStatePropertyAll(Size(100, 0)),
                          shadowColor: MaterialStatePropertyAll(Colors.black),
                          elevation: MaterialStatePropertyAll(5),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 114, 187, 247))),
                      onPressed: () {},
                      child: Text(
                        'Upload',
                        style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              height: 50,
              width: 350,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black26, offset: Offset(0, 5), blurRadius: 3),
              ], color: Colors.white),
              child: SizedBox(
                height: 30,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                        fixedSize: MaterialStatePropertyAll(Size(100, 0)),
                        shadowColor: MaterialStatePropertyAll(Colors.black),
                        elevation: MaterialStatePropertyAll(5),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 122, 192, 250))),
                    onPressed: () {},
                    child: Text(
                      'Upload',
                      style: TextStyle(
                          fontFamily: 'InriaSerif',
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                'Health Care',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              height: 50,
              width: 350,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black26, offset: Offset(0, 5), blurRadius: 3),
              ], color: Colors.white),
              child: Icon(
                Icons.add_circle,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
