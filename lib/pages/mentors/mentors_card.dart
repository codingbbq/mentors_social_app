import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/mentors.dart';
import 'package:mentors_social_app/pages/details/mentor_details_page.dart';
import 'package:mentors_social_app/pages/mentors/mentors_statistics.dart';

class MentorsCard extends StatelessWidget {

  final Mentors mentor;

  MentorsCard({ this.mentor}); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MentorDetails(mentorDetails: mentor)),
          );
        },
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                // User profile, name and follow button
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(                   
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(mentor.profileImg),
                              fit: BoxFit.cover
                            ),
                          ),
                          child: OverflowBox(
                            minHeight: 14,
                            minWidth: 14,
                            alignment: Alignment(1.35, 0.50),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2
                                )
                              ),
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        // Name, title and website
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              mentor.name,
                              style: TextStyle(color: Colors.black, fontSize: 18.0),
                            ),
                            SizedBox(height: 10.0,),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: mentor.title,
                                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                                  ),
                                  TextSpan(text: " "),
                                  TextSpan(
                                    text: mentor.website,
                                    style: TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold)
                                  )
                                ]
                              )
                            )
                          ],
                        ),
                      ],
                    ),

                    // Follow button
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid
                        )
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.rss_feed,
                              color: Colors.orange,
                              size: 15,
                            ),
                            SizedBox(width: 5,),
                            Text("Follow")
                          ],
                        ),
                      ),
                    )
                    
                    
                  ],
                ),
                SizedBox(height: 10.0,),
                // Border bottom
                Divider(
                  color: Color(0xFFE9E9E9),
                  thickness: 1,
                ),
                
                SizedBox(height: 10.0,),

                MentorStatistics(stats: mentor.stats)

              ],
            ),
          )
        ),
      )
    );
  }
}