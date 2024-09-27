import 'package:flutter/material.dart';
import 'package:flutter_webtest/pages/home_page/widgets/line_chart_card.dart';

import 'activity_widget.dart';
import 'header_widget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: const [
            SizedBox(height: 15),
            HeaderWidget(),
            SizedBox(height: 15),
            ActivityWidget(),
            SizedBox(height: 15),
            LineChartCard(),
          ],
        ),
      ),
    );
  }
}
