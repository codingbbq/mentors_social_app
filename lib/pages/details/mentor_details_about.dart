import 'package:flutter/material.dart';

class MentorDetailsAbout extends StatelessWidget {

  final String about;

  MentorDetailsAbout({ this.about });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 5),
      child: Container(
        height: 200,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
           color: Color(0xFFE7E7E7),
           width: 1,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0xFFE7E7E7)
            )
          ]
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "About Me".toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF343434),
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                about,
                style: TextStyle(
                  color: Color(0xFF717171),
                  fontSize: 18.0,
                  letterSpacing: 1.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}