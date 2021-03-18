import 'package:flutter/material.dart';
import '/widgets/categories.dart';
import '/widgets/dayss.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 235),
                      child: Text(
                        "Hello Ankur!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Find a ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text(
                          "Workout",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child: Icon(Icons.search),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                child: FittedBox(
                  child: Image.asset('assets/ocean.png'),
                  fit: BoxFit.fill,
                ),
                width: 340.0,
                height: 200,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 8.0,
                    offset: Offset(0, 20),
                    color: Colors.black.withOpacity(0.6),
                    spreadRadius: 50.0,
                  )
                ]),
              ),
            ),
          ),
          SizedBox(height: 20),
          Categories(),
          SizedBox(
            height: 15,
          ),
          Daily(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.5),
                  child: Container(
                    height: 110,
                    width: 90,
                    child: NeumorphicButton(
                      style: NeumorphicStyle(
                        color: Colors.white,
                        depth: 50,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.house_outlined,
                              size: 50, color: Colors.blue),
                          Text(
                            "Home",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.5),
                  child: Container(
                    height: 110,
                    width: 90,
                    child: NeumorphicButton(
                      style: NeumorphicStyle(
                        color: Colors.white,
                        depth: 50,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.call_missed, size: 50, color: Colors.blue),
                          Text(
                            "Activity",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.5),
                  child: Container(
                    height: 110,
                    width: 90,
                    child: NeumorphicButton(
                      style: NeumorphicStyle(
                        color: Colors.white,
                        depth: 50,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.settings, size: 50, color: Colors.blue),
                          Text(
                            "Settings",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.5),
                  child: Container(
                    height: 110,
                    width: 90,
                    child: NeumorphicButton(
                      style: NeumorphicStyle(
                        color: Colors.white,
                        depth: 50,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.person, size: 50, color: Colors.blue),
                          Text(
                            "Profile",
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
