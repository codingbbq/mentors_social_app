import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/mentors.dart';

class MentorDetails extends StatelessWidget {

  final Mentors mentorDetails;

  MentorDetails({ this.mentorDetails });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(mentorDetails.name),
    );
  }
}