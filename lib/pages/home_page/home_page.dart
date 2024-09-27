import 'package:flutter/material.dart';
import 'package:flutter_webtest/pages/home_page/widgets/dashboard.dart';
import 'package:flutter_webtest/pages/home_page/widgets/side_menu.dart';
import 'package:flutter_webtest/pages/home_page/widgets/summary.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: const [
          //Side menu
          Expanded(
            flex: 2,
            child: SizedBox(
              child: SideMenu(),
            ),
          ),

          //Dashboard
          Expanded(
            flex: 7,
            child: SizedBox(
              child: DashBoard(),
            ),
          ),

          //Summary
          Expanded(
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
