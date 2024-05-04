import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photographer_project/Service_screen.dart';
import 'package:photographer_project/about_Screen.dart';
import 'package:photographer_project/profile_Screen.dart';
import 'package:photographer_project/search_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'photopgrapher',
      home: Photographer(),
    );
  }
}

class Photographer extends StatefulWidget {
  const Photographer({super.key});

  @override
  State<Photographer> createState() => _PhotographerState();
}

class _PhotographerState extends State<Photographer> {
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'HEER',
                          style: TextStyle(
                              fontSize: 100,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 2),
                        ),
                        Text(
                          'photography & managements',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '"Capturing moments that Speak louder than Words welcome to our world."',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 150,
                          child: MaterialButton(
                            height: 50,
                            color: Color.fromRGBO(255, 152, 0, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Search(),));
                            },
                            child: Text(
                              'Explore',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset('Galleys/main_image.png',)
                  ],
                ),
              ],
            ),
          ),
        ],
              ),
            ));
  }
}
