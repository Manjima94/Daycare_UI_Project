import 'package:daycare_ui/Daycare/child.dart';
import 'package:flutter/material.dart';

class Children extends StatefulWidget {
  const Children({super.key});

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
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
            ),
          ),
          title: Center(
            child: Text(
              'Children',
              style: TextStyle(
                  fontFamily: 'InriaSerif',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(children: [
              Text(
                'No Of Children',
                style: TextStyle(
                    fontFamily: 'InriaSerif',
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
              Divider(
                color: Colors.black,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black45,
                              offset: Offset(0, 5),
                              blurRadius: 2)
                        ],
                        border: Border.all(color: Colors.black12),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Jeni ',
                          style: TextStyle(
                              fontFamily: 'InriaSerif',
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                fixedSize:
                                    MaterialStatePropertyAll(Size(90, 30)),
                                shadowColor:
                                    MaterialStatePropertyAll(Colors.black),
                                elevation: MaterialStatePropertyAll(5),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 82, 103, 239))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Child(),
                                  ));
                            },
                            child: Text(
                              'View',
                              style: TextStyle(
                                  fontFamily: 'InriaSerif',
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )),
                      ],
                    ),
                  ))
            ])));
  }
}
