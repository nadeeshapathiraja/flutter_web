import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webtest/components/custom_card.dart';
import 'package:flutter_webtest/constants/colors.dart';
import 'package:flutter_webtest/data/barchart_data.dart';

import '../../../models/graph_model.dart';

class BarGraphCard extends StatefulWidget {
  const BarGraphCard({super.key});

  @override
  State<BarGraphCard> createState() => _BarGraphCardState();
}

class _BarGraphCardState extends State<BarGraphCard> {
  @override
  Widget build(BuildContext context) {
    final barGraphdata = BarGraphData();
    return GridView.builder(
      itemCount: barGraphdata.data.length,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 15,
        childAspectRatio: 5 / 4,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          padding: const EdgeInsets.all(5),
          childWidget: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  barGraphdata.data[index].lable,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: greyColor,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //Bar graph
              Expanded(
                child: BarChart(
                  BarChartData(
                    barGroups: _chartGroups(
                      color: barGraphdata.data[index].color,
                      points: barGraphdata.data[index].graph,
                     ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  List<BarChartGroupData> _chartGroups({
    required List<GraphModel> points,
    required Color color,
  }) {
    return points
        .map(
          (point) => BarChartGroupData(
            x: point.x.toInt(),
            barRods: [
              BarChartRodData(
                toY: point.y,
                width: 12,
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ],
          ),
        )
        .toList();
  }
}
