import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photographer_project/profile_Screen.dart';
import 'package:photographer_project/search_screen.dart';

import 'Service_screen.dart';
import 'about_Screen.dart';
import 'main.dart';

void main() => runApp(Order());

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Search(),
                        ));
                  },
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
                  onHover: (value) => Colors.white54,
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
          Container(
            height: 300,
              decoration: BoxDecoration(
              color: Color.fromRGBO(255, 201, 74, 1)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50,top: 30),
                          child: Image.asset('Galleys/Ellipse 2.png',width: 150,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text('Shubh Joshi',style: TextStyle(color: Colors.black,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Image.asset('galleys/phone.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('9644178701',style: TextStyle(fontSize: 20,color: Colors.black),),
                        )
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 170),
                              child: Text('indore, mp',style: TextStyle(color: Colors.black,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 180),
                              child: Image.asset('Galleys/email 1.png',width: 50,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('226.shubhjoshi@gmail.com',style: TextStyle(fontSize: 20,color: Colors.black),),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ),
        ]),
      )),
    );
  }
}
