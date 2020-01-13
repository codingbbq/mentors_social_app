import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/mentors.dart';

class MentorDetailsCard extends StatelessWidget {

  final Mentors details;

  MentorDetailsCard({ this.details });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Color(0xFFE7E7E7),
          ),
        )
      ),
      child: Column(
        children: <Widget>[
          // Image
              Center(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        details.profileImg
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                  child: OverflowBox(
                    minWidth: 30,
                    minHeight: 30,
                    alignment: Alignment(1.25, 0.7),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 3
                        )
                      ),
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 24.0
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              // Name
              Center(
                child: Text(
                  details.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0, color: Colors.black)
                ),
              ),

              SizedBox(height: 5.0),

              // Titile and Website
              Center(
                child: Text(
                  '${details.title} ${details.website}',
                  style: TextStyle(fontSize: 18.0, color: Color(0xFF343434)),
                )
              ),

              SizedBox(height: 20.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Color(0xFFE7E7E7),
                        width: 2.0
                      )
                    ),
                    child: FlatButton(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                      onPressed: (){},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.rss_feed,
                            color: Colors.orange,
                            size: 20.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                            "FOLLOW",
                            style: TextStyle(color: Colors.grey, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                        color: Color(0xFFE7E7E7),
                        width: 2.0
                      )
                    ),
                    child: FlatButton(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                      onPressed: (){},
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.message,
                            color: Colors.orange,
                            size: 20.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                            "SEND A MESSAGE",
                            style: TextStyle(color: Colors.grey, fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ),

                 
                ],
              ),

              SizedBox(height: 20.0,),
              // Mentor Stats
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Raised
                  Column(
                    children: <Widget>[
                      Text(
                        details.stats.raised,
                        style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                        "RAISED",
                        style: TextStyle(color: Color(0xFF343434), fontSize: 16.0),
                      )
                    ],
                  ),

                  // Followers
                  Column(
                    children: <Widget>[
                      Text(
                        details.stats.followers,
                        style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                        "FOLLOWERS",
                        style: TextStyle(color: Color(0xFF343434), fontSize: 16.0),
                      )
                    ],
                  ),

                  // Updates
                  Column(
                    children: <Widget>[
                      Text(
                        details.stats.updates.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5.0,),
                      Text(
                        "UPDATES",
                        style: TextStyle(color: Color(0xFF343434), fontSize: 16.0),
                      )
                    ],
                  )

                ],
              ),
              // End . // Mentor Stats
        ],
      ),
    );
  }
}