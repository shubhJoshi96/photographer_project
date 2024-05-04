
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Service_screen.dart';
import 'about_Screen.dart';
import 'main.dart';

void main()=>runApp(profile());

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile_screen(),
    );
  }
}

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {

  var nameController= TextEditingController();
  var emailController= TextEditingController();
  var contactController= TextEditingController();
  var cityController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.only(top: 70),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text('Edit profile',style: TextStyle(fontSize: 22,),),
                             Image.asset('Galleys/Ellipse 1.png'),
                           ],
                         ),
                         SizedBox(
                           height: 20,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                              Text('Name',style: TextStyle(fontSize: 20),),
                             Container(
                               height: 30,
                               width: 250,
                               decoration: BoxDecoration(
                                 color: Colors.grey,
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: TextField(
                                   controller: nameController,
                                   decoration: InputDecoration(
                                     hintText: 'Name',
                                     border: InputBorder.none,
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text('Email',style: TextStyle(fontSize: 20),),
                             Container(
                               height: 30,
                               width: 250,
                               decoration: BoxDecoration(
                                 color: Colors.grey,
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: TextField(
                                   controller: nameController,
                                   decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: 'Email',
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text('Contact',style: TextStyle(fontSize: 20),),
                             Container(
                               height: 30,
                               width: 250,
                               decoration: BoxDecoration(
                                 color: Colors.grey,
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: TextField(
                                   controller: nameController,
                                   decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: 'Contact',
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Text('City',style: TextStyle(fontSize: 20),),
                             Container(
                               height: 30,
                               width: 250,
                               decoration: BoxDecoration(
                                 color: Colors.grey,
                               ),
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: TextField(
                                   controller: nameController,
                                   decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: 'City',
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                         SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             MaterialButton(
                               elevation: 1,
                               color: Colors.black,
                               onPressed: (){},
                               child: Text('close',style: TextStyle(color: Colors.white,fontSize: 18),),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(50.0),
                               child: MaterialButton(
                                 elevation: 1,
                                 color: Colors.blue,
                                 onPressed: (){},
                                 child: Text('save',style: TextStyle(color: Colors.white,fontSize: 18),),
                               ),
                             ),
                           ],
                         )

                       ],
                    ),
                  )

                ]
            )
        )
    );
  }
}

