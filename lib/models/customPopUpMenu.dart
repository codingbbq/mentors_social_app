import 'package:flutter/material.dart';

class CustomPopUpMenu {
  final String title;
  final IconData icon;

  CustomPopUpMenu({
    this.title,
    this.icon
  });
}

List<CustomPopUpMenu> choices = <CustomPopUpMenu>[
  CustomPopUpMenu(title: "Home", icon: Icons.home),
  CustomPopUpMenu(title: "Settings", icon: Icons.settings),
  CustomPopUpMenu(title: "About", icon: Icons.person)
];
