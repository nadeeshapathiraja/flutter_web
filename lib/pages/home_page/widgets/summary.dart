import 'package:flutter/material.dart';
import 'package:flutter_webtest/constants/colors.dart';

import 'pie_chart.dart';
import 'sheduled_card.dart';
import 'summary_details.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   color: cardBgColor,
      // ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            PieChartCard(),
            Text(
              "Summary",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: greyColor,
              ),
            ),
            SizedBox(height: 15),
            SummaryDetails(),
            SizedBox(height: 15),
            SheduledWidget(),
          ],
        ),
      ),
    );
  }
}
