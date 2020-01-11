import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/filter.dart';
import 'package:mentors_social_app/pages/updates/most_recent.dart';
import 'package:mentors_social_app/pages/updates/updates_card.dart';

class UpdatesPage extends StatefulWidget {
  @override
  _UpdatesPageState createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  Filter _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfdfdfd),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFfdfdfd),
        leading: null,
        automaticallyImplyLeading: false,
        title: Container(
          width: 150,
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Image.asset(
            "assets/images/mentors-app-logo.png",
            width: 150,
          ),
        ),
        actions: <Widget>[
          Container(
            width: 130,
            padding: const EdgeInsets.only(left: 15.0),
            margin: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFe4e4e4)),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      blurRadius: 1, spreadRadius: 0, color: Colors.grey)
                ]),
            child: DropdownButton(
              underline: SizedBox(),
              icon: Icon(null),
              elevation: 0,
              value: _value,
              onChanged: (Filter newValue) {
                setState(() {
                  _value = newValue;
                });
              },
              items: filters.map<DropdownMenuItem<Filter>>((Filter filter) {
                return DropdownMenuItem<Filter>(
                  value: filter,
                  child: Row(
                    children: <Widget>[
                      filter.icon,
                      SizedBox(width: 10),
                      Text(
                        filter.filterName,
                      )
                    ],
                  ),
                );
              }).toList(),
              hint: Row(
                children: <Widget>[
                  Icon(
                    Icons.filter_list,
                    color: Colors.orange,
                  ),
                  SizedBox(width: 6),
                  Text("FILTER BY", style: TextStyle(fontSize: 13.0),)
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
           child: Column(
            children: <Widget>[
              MostRecent(),
              UpdatesCard(),
              UpdatesCard(),
            ],
          ),
        ),
      ),
    );
  }
}
