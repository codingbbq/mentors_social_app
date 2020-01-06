import 'package:flutter/material.dart';
import 'package:mentors_social_app/pages/updates/most_recent.dart';
import 'package:mentors_social_app/pages/updates/updates_card.dart';

class UpdatesPage extends StatefulWidget {
  @override
  _UpdatesPageState createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {

  String _value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Text("Mentors&Me", style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          Container(
            width: 150,
            padding: const EdgeInsets.only(left: 10.0),
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFe4e4e4)
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: DropdownButton(
              underline: SizedBox(),
              icon: Icon(null),
              elevation: 0,
              value: _value,
              onChanged: (String value) {
                setState(() {
                  _value = value;
                });
              },
              items: <String>["Name", "Comments"].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.filter_list, color: Colors.deepOrange,),
                      SizedBox(width: 10),
                      Text(value)
                    ],
                  ),
                );
              }).toList(),
              hint: Row(
                    children: <Widget>[
                      Icon(Icons.filter_list, color: Colors.deepOrange,),
                      SizedBox(width: 20),
                      Text("Filter")
                    ],
                  ),
            ),
          )
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