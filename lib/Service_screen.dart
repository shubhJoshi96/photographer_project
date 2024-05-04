import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photographer_project/profile_Screen.dart';

import 'about_Screen.dart';
import 'main.dart';

void main() => runApp(service_Screen());

class service_Screen extends StatelessWidget {
  const service_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Services(),
    );
  }
}

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
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
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Services',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                                        Padding(
                    padding: const EdgeInsets.only(left: 70,top: 40),
                    child: Expanded(
                      child: Container(
                    // alignment: Alignment.centerRight,
                          height: 600,
                          width: 1320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(3, 1, 56, 1),
                          ),
                          child: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('Galleys/camera1.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Hire a cameraman in your city',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Image.asset('Galleys/camera2.png'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Hire a videographer in your city',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Image.asset('Galleys/camera3.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Hire a Editor',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      Image.asset('Galleys/camera4.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Rant camera and lights',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                                        ),
                                      ]))
              ])),
        ));
  }
}
