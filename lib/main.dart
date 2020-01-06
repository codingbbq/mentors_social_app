import 'package:flutter/material.dart';
import 'package:mentors_social_app/pages/updates/updates_page.dart';

void main() => runApp(MentorsApp());

class MentorsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: UpdatesPage(),
    );
  }
}

