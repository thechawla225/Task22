import 'package:flutter/material.dart';
import '/list/list_items.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Today's Activity",
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
        height: 100.0,
        margin: EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: listItems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext, int index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10.0, bottom: 20.0),
                width: 150.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        offset: Offset(-10, 30),
                        color: Colors.black.withOpacity(0.6),
                        spreadRadius: -30.0,
                      )
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: Column(children: [listItems[index].icon]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            listItems[index].text,
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                          ),
                          Text(
                            listItems[index].number,
                            style: TextStyle(
                                fontSize: 23.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
