import 'package:flutter/material.dart';
import 'package:mentors_social_app/pages/mentors/mentors_card.dart';

class MentorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: MentorsCard(),
      ),
    );
  }
}