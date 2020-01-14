import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/customPopUpMenu.dart';
import 'package:mentors_social_app/models/mentors.dart';
import 'package:mentors_social_app/pages/details/mentor_details_about.dart';
import 'package:mentors_social_app/pages/details/mentor_details_card.dart';
import 'package:mentors_social_app/pages/details/mentor_details_connect.dart';

class MentorDetails extends StatefulWidget {

  final Mentors mentorDetails;

  MentorDetails({ this.mentorDetails });

  @override
  _MentorDetailsState createState() => _MentorDetailsState();
}

class _MentorDetailsState extends State<MentorDetails> {

  CustomPopUpMenu _selectedChoice = choices[0];

  void _select(CustomPopUpMenu choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          PopupMenuButton(
            initialValue: _selectedChoice,
            onSelected: _select,
            itemBuilder: (BuildContext context){
              return choices.map((CustomPopUpMenu choice){
                return PopupMenuItem<CustomPopUpMenu>(
                  value: choice,
                  child: Row(
                    children: <Widget>[
                      Icon(choice.icon),
                      SizedBox(width: 15.0),
                      Text(choice.title)
                    ],
                  )
                );
              }).toList();
            },
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              MentorDetailsCard(details : widget.mentorDetails),
              SizedBox(height: 10.0,),
              MentorDetailsAbout(about: widget.mentorDetails.about),
              SizedBox(height: 10.0,),
              MentorDetailsConnect(connect: widget.mentorDetails.connect),
            ],
          ),
        ),
      ),
    );
  }
}