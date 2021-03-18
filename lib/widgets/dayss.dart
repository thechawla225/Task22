import 'package:flutter/material.dart';
import '/list/list_items.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Daily extends StatefulWidget {
  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Daily Activity",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Text(
              "Details",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
      Container(
        height: 150.0,
        margin: EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: dailyItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext, int index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10.0, bottom: 20.0),
                width: 90.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        offset: Offset(0, 30),
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: -20.0,
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dailyItems[index].day,
                          style: TextStyle(fontSize: 18.0, color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          dailyItems[index].date,
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
