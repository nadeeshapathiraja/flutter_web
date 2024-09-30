import 'package:flutter/material.dart';
import 'package:flutter_webtest/constants/colors.dart';
import 'package:flutter_webtest/data/side_menu_data.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sidemenudata = SideMenuData();

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        child: Container(
          color: bgColor,
          child: ListView.builder(
            itemCount: sidemenudata.sideMenuList.length,
            itemBuilder: (BuildContext context, int index) {
              return _sideMenuList(sidemenudata, index);
            },
          ),
        ),
      ),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenuListData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: selectedIndex == index ? sectionColor : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenuListData.sideMenuList[index].icon,
                color: selectedIndex == index ? blackColor : greyColor,
              ),
              const SizedBox(width: 20),
              Text(
                sideMenuListData.sideMenuList[index].title,
                style: TextStyle(
                  color: selectedIndex == index ? blackColor : greyColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
