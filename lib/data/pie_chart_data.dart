import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webtest/constants/colors.dart';

class PieChartSampleData {
  final piechartdata = [
    PieChartSectionData(
        color: primaryColor, value: 12, showTitle: false, radius: 25),
    PieChartSectionData(
        color: Colors.amber, value: 25, showTitle: false, radius: 16),
    PieChartSectionData(
        color: Colors.green, value: 12, showTitle: false, radius: 13),
    PieChartSectionData(
        color: Colors.indigo, value: 21, showTitle: false, radius: 22),
  ];
}
