import 'package:flutter/material.dart';
import 'package:mentors_social_app/models/mentors.dart';

class MentorDetailsConnect extends StatelessWidget {

  final List<MentorsConnection> connect;

  MentorDetailsConnect({ this.connect });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Color(0xFFE7E7E7),
            width: 1,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0xFFE7E7E7)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children : <Widget>[
            Text(
              "Connect with me".toUpperCase(),
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF343434),
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10.0,),
              ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: connect.map(
                (connection) => 
                ListTile(
                  leading: Icon(
                    connection.icon,
                    color: Colors.orange,
                    size: 24.0,
                  ),
                  title: Text(
                    connection.connection, 
                    style: TextStyle(color: Color(0xFF343434)),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap: (){},
                )
              ).toList()
            ),
          ]
        )
      ),
    );
  }
}