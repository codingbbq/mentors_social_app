import 'package:flutter/material.dart';
import 'package:mentors_social_app/pages/updates/most_recent.dart';
import 'package:mentors_social_app/pages/updates/updates_card.dart';
import 'package:mentors_social_app/pages/updates/updates_card_two.dart';

class UpdatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
           child: Column(
            children: <Widget>[
              MostRecent(),
              UpdatesCard(),
              UpdatesCardTwo(),
              UpdatesCard(),
            ],
          ),
        ),
      );
  }
}