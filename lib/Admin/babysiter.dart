import 'package:flutter/material.dart';

class Babysiter extends StatefulWidget {
  const Babysiter({super.key});

  @override
  State<Babysiter> createState() => _BabysiterState();
}

class _BabysiterState extends State<Babysiter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 240, 225, 88),
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
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                'Babysitters',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
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
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/baby.png'),
                radius: 40,
              ),
              title: Text(
                'Dayana',
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
