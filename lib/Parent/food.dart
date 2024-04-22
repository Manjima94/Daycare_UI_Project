import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              height: 200,
              width: 420,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 209, 115),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 50,
                          color: Colors.white,
                        )),
                    Image.asset('images/food.png'),
                    Text(
                      'FOOD',
                      style: TextStyle(
                          fontFamily: 'IrishGrover',
                          fontSize: 60,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 129, 96, 85)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 160,
              left: 30,
              child: Container(
                height: 650,
                width: 350,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 5,
                          offset: Offset(0, 5),
                          color: Colors.black87)
                    ],
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 20),
                        child: Text(
                          'Monday',
                          style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 90,
                              child: Center(
                                  child: Text(
                                ' Brown rice, rasam&curd',
                                style: TextStyle(
                                  fontFamily: 'InriaSerif',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Long cut Apples',
                                style: TextStyle(
                                  fontFamily: 'InriaSerif',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 10),
                        child: Text(
                          'Tuesday',
                          style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                              child: Text(
                                'Long cut banana piece',
                                style: TextStyle(
                                  fontFamily: 'InriaSerif',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 20),
                        child: Text(
                          'Wednesday',
                          style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Egg & Milk',
                                style: TextStyle(
                                  fontFamily: 'InriaSerif',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 10),
                        child: Text(
                          'Thursday',
                          style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Banana with peanutbutter',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'InriaSerif',
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 10),
                        child: Text(
                          'Friday',
                          style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                              ),
                              height: 60,
                              width: 80,
                              child: Center(
                                  child: Text(
                                'Egg & Milk',
                                style: TextStyle(
                                  fontFamily: 'InriaSerif',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, top: 20, bottom: 10),
                        child: Text(
                          'Saturday',
                          style: TextStyle(
                            fontFamily: 'InriaSerif',
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                ),
                                height: 60,
                                width: 80,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                ),
                                height: 60,
                                width: 80,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black54),
                                ),
                                height: 60,
                                width: 80,
                                child: Center(
                                    child: Text(
                                  'Juice & Fruits',
                                  style: TextStyle(
                                    fontFamily: 'InriaSerif',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 140,
              left: 60,
              child: Container(
                height: 40,
                width: 80,
                color: Color.fromARGB(255, 244, 205, 91),
                child: Center(
                    child: Text(
                  'Breakfast',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )),
              )),
          Positioned(
              top: 140,
              left: 170,
              child: Container(
                height: 40,
                width: 80,
                color: Color.fromARGB(255, 244, 205, 91),
                child: Center(
                    child: Text(
                  'Lunch',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )),
              )),
          Positioned(
              top: 140,
              left: 270,
              child: Container(
                height: 40,
                width: 80,
                color: Color.fromARGB(255, 244, 205, 91),
                child: Center(
                    child: Text(
                  'Snack',
                  style: TextStyle(
                      fontFamily: 'InriaSerif',
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )),
              ))
        ],
      ),
    ));
  }
}
