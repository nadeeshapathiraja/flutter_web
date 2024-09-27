import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webtest/components/custom_card.dart';
import 'package:flutter_webtest/constants/colors.dart';
import 'package:flutter_webtest/data/line_chart_data.dart';

class LineChartCard extends StatefulWidget {
  const LineChartCard({super.key});

  @override
  State<LineChartCard> createState() => _LineChartCardState();
}

class _LineChartCardState extends State<LineChartCard> {
  final dataList = LineData();
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: greyColor,
            ),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  handleBuiltInTouches: true,
                ),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return dataList.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  dataList.bottomTitle[value.toInt()]
                                      .toString(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: greyColor,
                                  ),
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      reservedSize: 20,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return dataList.leftTitle[value.toInt()] != null
                            ? Text(
                                dataList.leftTitle[value.toInt()].toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: greyColor,
                                ),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    color: sectionColor,
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      gradient: LinearGradient(
                        colors: [
                          sectionColor.withOpacity(0.8),
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      show: true,
                    ),
                    dotData: FlDotData(show: false),
                    spots: dataList.spots,
                  ),
                ],
                minX: 0,
                maxX: 120,
                minY: 0,
                maxY: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
