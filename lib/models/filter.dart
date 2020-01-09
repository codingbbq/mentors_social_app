import 'package:flutter/material.dart';

class Filter{

  final String filterName;
  final Icon icon;

  Filter({
    this.filterName,
    this.icon
  });

}

final Filter date = Filter(filterName: "Date", icon: Icon(Icons.date_range, color: Colors.deepOrange, size: 20.0,));

final Filter name = Filter(filterName: "Name", icon: Icon(Icons.person, color: Colors.deepOrange, size: 20.0,));

final Filter likes = Filter(filterName: "Likes", icon: Icon(Icons.thumb_up, color: Colors.deepOrange, size: 20.0,));

List<Filter> filters = [
  date,
  name,
  likes
];