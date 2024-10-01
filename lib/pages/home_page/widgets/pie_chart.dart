import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webtest/data/pie_chart_data.dart';

import '../../../constants/colors.dart';

class PieChartCard extends StatefulWidget {
  const PieChartCard({super.key});

  @override
  State<PieChartCard> createState() => _PieChartCardState();
}

class _PieChartCardState extends State<PieChartCard> {
  final data = PieChartSampleData();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: 0,
              sections: data.piechartdata,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "70%",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: greyColor,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "of 100%",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: greyColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
