import 'package:flutter/material.dart';

class MostRecent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFFf7f7f7),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: "SHOWING ", style: TextStyle(fontSize: 14.0, color: Colors.grey, letterSpacing: 1.1)),
                TextSpan(text: "MOST RECENT ", style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
                TextSpan(text: "ITEMS", style: TextStyle(fontSize: 14.0, color: Colors.grey, letterSpacing: 1.2)),
              ]
            ),
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.keyboard_arrow_down),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}