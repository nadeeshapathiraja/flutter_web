import 'package:flutter/material.dart';
import 'package:flutter_webtest/constants/colors.dart';
import 'package:flutter_webtest/pages/home_page/widgets/dashboard.dart';
import 'package:flutter_webtest/pages/home_page/widgets/side_menu.dart';
import 'package:flutter_webtest/pages/home_page/widgets/summary.dart';

import '../../utils/responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktopSize = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktopSize
          ? const SizedBox(
              width: 250,
              child: SideMenu(),
            )
          : null,
      endDrawer: !isDesktopSize
          ? Container(
              color: bgColor,
              width: 260,
              child: const Summary(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          //Side menu
          if (isDesktopSize)
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),

          //Dashboard
          const Expanded(
            flex: 7,
            child: SizedBox(
              child: DashBoard(),
            ),
          ),

          //Summary
          if (isDesktopSize)
            const Expanded(
              flex: 3,
              child: SizedBox(
                child: Summary(),
              ),
            ),
        ],
      )),
    );
  }
}
