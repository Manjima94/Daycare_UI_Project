import 'package:daycare_ui/Parent/Doctor.dart';
import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Doctor(),
                ));
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 40,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 250, top: 50),
            child: Text(
              'All done',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20, left: 30),
            child: Row(
              children: [
                Text(
                  'Booking successful',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 162, 204, 239)),
                ),
                Icon(
                  Icons.check_circle_outline,
                  size: 30,
                  color: const Color.fromARGB(255, 162, 204, 239),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            width: 380,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 5),
                      blurRadius: 3)
                ],
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue[100]),
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr.Sarah',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
