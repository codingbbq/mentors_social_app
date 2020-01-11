import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/filter.dart';
import 'package:mentors_social_app/pages/mentors/mentors_page.dart';
import 'package:mentors_social_app/pages/messages/messages_page.dart';
import 'package:mentors_social_app/pages/profile/profile_page.dart';
import 'package:mentors_social_app/pages/updates/updates_page.dart';

class Mentors extends StatefulWidget {
  @override
  _MentorsState createState() => _MentorsState();
}

class _MentorsState extends State<Mentors> {

  Filter _value;

  // Selected index from the bottom navigation bar
  int _currentIndex = 0;

  // List of pages to display based on the bottom navigation bar
  final List<Widget> _children = [
    UpdatesPage(),
    MentorsPage(),
    MessagesPage(),
    ProfilePage()
  ];

  final List<Widget> _header = [
    MentorsLogo(),
    MentorsText(mentorsText: "Mentors",),
    MentorsText(mentorsText: "Messages",),
    MentorsText(mentorsText: "Profile",)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFfdfdfd),
        leading: null,
        automaticallyImplyLeading: false,
        title: _header[_currentIndex],
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
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            title: Text("Updates", style: TextStyle(color: Colors.black, fontSize: 16.0),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("Mentors", style: TextStyle(color: Colors.black, fontSize: 16.0),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Messages", style: TextStyle(color: Colors.black, fontSize: 16.0),)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile", style: TextStyle(color: Colors.black, fontSize: 16.0),)
          )
        ],
      ),
    );
  }
}

class MentorsLogo extends StatelessWidget {
  const MentorsLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Image.asset(
        "assets/images/mentors-app-logo.png",
        width: 150,
      ),
    );
  }
}

class MentorsText extends StatelessWidget {
  final String mentorsText;

  const MentorsText({Key key, this.mentorsText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      mentorsText,
      style: TextStyle(fontSize: 24.0, color: Colors.black, letterSpacing: 1.0),
    );
  }
}
