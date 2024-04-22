// ignore_for_file: prefer_const_constructors

import 'package:daycare_ui/Parent/childenroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 40,
                  color: Colors.black54,
                )),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(5, 5),
                        blurRadius: 2)
                  ],
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search),
                  SizedBox(
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Search Daycare',
                            hintStyle: TextStyle(
                                fontFamily: 'InriaSerif',
                                fontWeight: FontWeight.w400,
                                color: Colors.black38,
                                fontSize: 25),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(7),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 173, 217, 222))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Enroll(),
                          ));
                    },
                    child: Row(
                      children: const [
                        Text(
                          'Little Kids',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'InriaSerif',
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.amber,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.amber,
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStatePropertyAll(7),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 173, 217, 222))),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text(
                            'Sacred',
                            style: TextStyle(
                                fontFamily: 'InriaSerif',
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60),
                            child: Icon(
                              Icons.star,
                              size: 30,
                              color: Colors.amber,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(7),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 173, 217, 222))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Tiny Kids',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'InriaSerif',
                              fontSize: 30,
                              fontWeight: FontWeight.w400),
                        ),

                        RatingBar.builder(
                          initialRating: 2,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )
                        // Padding(
                        //   padding: EdgeInsets.only(left: 23),
                        //   child: Icon(
                        //     Icons.star,
                        //     size: 30,
                        //     color: Colors.amber,
                        //   ),
                        // ),
                        // Icon(
                        //   Icons.star,
                        //   size: 30,
                        //   color: Colors.amber,
                        // ),
                        // Icon(
                        //   Icons.star,
                        //   size: 30,
                        //   color: Colors.white,
                        // ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
