import 'package:flutter/material.dart';
import 'package:flutter_webtest/models/side_menu_model.dart';

class SideMenuData {
  final sideMenuList = <SideMenuModel>[
    SideMenuModel(
      icon: Icons.home,
      title: "Dashboard",
    ),
    SideMenuModel(
      icon: Icons.person,
      title: "Profile",
    ),
    SideMenuModel(
      icon: Icons.run_circle,
      title: "Exersice",
    ),
    SideMenuModel(
      icon: Icons.settings,
      title: "Settings",
    ),
    SideMenuModel(
      icon: Icons.history,
      title: "History",
    ),
    SideMenuModel(
      icon: Icons.logout,
      title: "SignOut",
    ),
  ];
}
