import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 120,
          elevation: 30,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40))),
          backgroundColor: Color.fromARGB(255, 30, 141, 168),
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                  color: Colors.black,
                )),
          ),
          title: Center(
            child: Text(
              'Daily Task',
              style: TextStyle(
                  fontFamily: 'InriaSerif',
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w700),
            ),
          )),
      body: Column(
        children: [
          Text(
            'Today',
            style: TextStyle(
                color: Colors.black38,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          Container(
              height: 130,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                color: Colors.amber,
              )),
          Image(image: AssetImage('images/add.png'))
        ],
      ),
    );
  }
}
