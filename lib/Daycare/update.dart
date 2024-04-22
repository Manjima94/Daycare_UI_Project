import 'package:daycare_ui/Daycare/update1.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
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
        padding: const EdgeInsets.only(bottom: 600),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            'Dancing',
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.w400),
          ),
          Column(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(140, 40)),
                      elevation: MaterialStatePropertyAll(10),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 231, 55, 55))),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).pop();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_outline,
                        color: Colors.white,
                        size: 20,
                      ),
                      Text(
                        'Delete',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(140, 40)),
                      elevation: MaterialStatePropertyAll(10),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 124, 212, 119))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => update1(),
                        ));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        color: Color.fromARGB(255, 240, 220, 220),
                        size: 20,
                      ),
                      Text(
                        'Update',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
