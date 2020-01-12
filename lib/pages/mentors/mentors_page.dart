import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/mentors.dart';
import 'package:mentors_social_app/pages/mentors/mentors_card.dart';

class MentorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: mentorsList.length,
        itemBuilder: (BuildContext context, int index){
          return MentorsCard(mentor: mentorsList[index],);
        },
      )
    );
  }
}