import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/mentors.dart';

class MentorStatistics extends StatelessWidget {

  final MentorsStats stats;

  MentorStatistics({ this.stats });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          // Amount raised
          Column(
            children: <Widget>[
              Text(
                stats.raised,
                style: statTextStyle()
              ),
              SizedBox(height: 5.0),
              Text(
                "RAISED",
                style: captionTextStyle()
              )
            ],
          ),

          // Followers
          Column(
            children: <Widget>[
              Text(
                stats.followers,
                style: statTextStyle()
              ),
              SizedBox(height: 5.0),
              Text(
                "FOLLOWERS",
                style: captionTextStyle()
              )
            ],
          ),

          // Followers
          Column(
            children: <Widget>[
              Text(
                stats.updates.toString(),
                style: statTextStyle()
              ),
              SizedBox(height: 5.0),
              Text(
                "UPDATES",
                style: captionTextStyle()
              )
            ],
          ),

        ],
      ),
    );
  }

  statTextStyle() {
    return TextStyle(fontSize: 22.0, color: Colors.black);
  }

  captionTextStyle() {
    return TextStyle(fontSize: 16.0, color: Colors.grey);
  }
}