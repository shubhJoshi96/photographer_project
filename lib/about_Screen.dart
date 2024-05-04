import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photographer_project/profile_Screen.dart';

import 'Service_screen.dart';
import 'main.dart';

void main() => runApp(About_us());

class About_us extends StatelessWidget {
  final title =
      '"Capturing Life"s Moments: Your Trusted Photography Storytellers"';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'about us',
      home: Scaffold(
        body: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
    children: [
    Container(
    height: 70,
    decoration: BoxDecoration(
    color: Color.fromRGBO(3, 1, 56, 1),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: Image.asset(
    'Galleys/logo1.png',
    fit: BoxFit.cover,
    height: 50,
    ),
    ),
    TextButton(
    onPressed: () {
    print('shubh');
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => App(),
    ));
    },
    child: Text(
    'Home',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 17),
    ),
    ),
    TextButton(
    onPressed: () {},
    child: Text(
    'search',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 17),
    ),
    ),
    TextButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => service_Screen(),
    ));
    },
    child: Text(
    'Services',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 17),
    ),
    ),
    TextButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => About_us(),
    ));
    },
    child: Text(
    'About us',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 17),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(10),
    child: InkWell(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => profile(),
    ));
    },
    child: Image.asset(
    'Galleys/Ellipse 1.png',
    fit: BoxFit.cover,
    ),
    ),
    )
    ],
    ),
    ),

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About us',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 1, 56, 1),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 600, left: 100),
                            child: Image.asset(
                              'Galleys/image1.png',
                              width: 450,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              title,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      )
    ]
      ),
    ),
      )
    );
  }
}
