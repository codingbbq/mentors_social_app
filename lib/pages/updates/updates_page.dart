import 'package:flutter/material.dart';
import 'package:mentors_social_app/pages/updates/most_recent.dart';
import 'package:mentors_social_app/pages/updates/updates_card.dart';

class UpdatesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text("Mentors&Me", style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            MostRecent(),
            UpdatesCard(),
          ],
        ),
      ),
    );
  }
}