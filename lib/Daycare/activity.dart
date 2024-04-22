import 'package:daycare_ui/Daycare/addact.dart';
import 'package:daycare_ui/Daycare/update.dart';
import 'package:flutter/material.dart';

class ActivityC extends StatefulWidget {
  const ActivityC({super.key});

  @override
  State<ActivityC> createState() => _ActivityCState();
}

class _ActivityCState extends State<ActivityC> {
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
            'Activity',
            style: TextStyle(
                fontFamily: 'GravitasOne',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 70),
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      fixedSize: MaterialStatePropertyAll(Size(210, 60)),
                      shadowColor: MaterialStatePropertyAll(Colors.black),
                      elevation: MaterialStatePropertyAll(5),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 29, 49, 176))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addact(),
                        ));
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                        fontFamily: 'InriaSerif',
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    fixedSize: MaterialStatePropertyAll(Size(220, 60)),
                    shadowColor: MaterialStatePropertyAll(Colors.black),
                    elevation: MaterialStatePropertyAll(5),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 248, 108, 201))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Update(),
                      ));
                },
                child: Text(
                  'Update&Delete',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}
