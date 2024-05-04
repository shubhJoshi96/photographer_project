import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photographer_project/profile_Screen.dart';

import 'Service_screen.dart';
import 'about_Screen.dart';
import 'main.dart';

void main() => runApp(Search());

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: search_Screen(),
    );
  }
}

class search_Screen extends StatefulWidget {
  const search_Screen({super.key});

  @override
  State<search_Screen> createState() => _search_ScreenState();
}

class _search_ScreenState extends State<search_Screen> {

  var nameController = TextEditingController();
  var cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Container(
                width: double.infinity,
                height: 320,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(70.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('name',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                           Padding(
                             padding: const EdgeInsets.all(15.0),
                             child: Container(
                               height: 30,
                               width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                                ),
                               child: Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: TextField(
                                   controller: nameController,
                                   decoration: InputDecoration(
                                     border: InputBorder.none
                                   ),
                                 ),
                               )
                             ),
                           ),
                         ],
                       ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('city',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  height: 30,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      controller: cityController,
                                      decoration: InputDecoration(
                                          border: InputBorder.none
                                      ),
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 150,
                            height: 40,
                             child: MaterialButton(
                               onPressed: (){},
                               color: Colors.blue,
                               child: Text('Search',style: TextStyle(fontSize: 17,color: Colors.white),),
                             )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 25,
                          crossAxisSpacing: 25,
                          childAspectRatio: 4/3,
                        ),
                        itemCount: 5,
                        itemBuilder: (context, index) => buildcard(),),
                  ),
                ),
              )





            ]
            )
        ),
    );
  }
  Widget buildcard(){

    return Expanded(
      child: Container(
        // height: 120,
        // width: 150,
        decoration: BoxDecoration(
          color: Color.fromRGBO(217, 217, 217, 1),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset('Galleys/circle.png'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Shubh Joshi',style: TextStyle(fontSize: 18),),
                  ),

                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset('Galleys/location.png'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Barwani',style: TextStyle(fontSize: 18),),
                  ),

                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 40,
                    child: MaterialButton(
                      color: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        onPressed: (){},
                      child: Text('Contact',style: TextStyle(color: Colors.white,fontSize: 22),),

                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );

  }
}
