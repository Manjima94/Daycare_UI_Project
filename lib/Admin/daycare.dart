import 'package:flutter/material.dart';

class Daycare extends StatefulWidget {
  const Daycare({super.key});

  @override
  State<Daycare> createState() => _DaycareState();
}

class _DaycareState extends State<Daycare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 31, 200, 144),
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.keyboard_arrow_left_sharp,
                ),
                iconSize: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text(
                  'Day care',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'InriaSerif',
                      fontWeight: FontWeight.w400),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                'Day care $index',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'InriaSerif',
                    fontWeight: FontWeight.w400),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete_outline_outlined,
                ),
                iconSize: 30,
              ),
            );
          },
        ),
      ),
    );
  }
}
