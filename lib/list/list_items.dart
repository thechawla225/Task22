import 'package:flutter/material.dart';


class ListItem {
  String text;
  String number;
  Icon icon;

  ListItem(this.text, this.number, this.icon);
}

List<ListItem> listItems = [
  ListItem(
    "Steps",
    "1,228",
    Icon(Icons.camera, color: Colors.blue),
  ),
  ListItem(
    "Calories",
    "829",
    Icon(Icons.camera, color: Colors.blue),
  ),
  ListItem(
    "BPM",
    "8,800",
    Icon(Icons.camera, color: Colors.blue),
  )
];

class Days {
  String day;
  String date;

  Days(this.day, this.date);
}

List<Days> dailyItems = [
  Days(
    "MON",
    "08",
  ),
  Days(
    "SUN",
    "07",
  ),
  Days(
    "SAT",
    "06",
  ),
  Days(
    "FRI",
    "05",
  ),
];
