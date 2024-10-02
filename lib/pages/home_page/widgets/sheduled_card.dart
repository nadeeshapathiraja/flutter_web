import 'package:flutter/material.dart';
import 'package:flutter_webtest/components/custom_card.dart';
import 'package:flutter_webtest/data/shedule_data.dart';

import '../../../constants/colors.dart';

class SheduledWidget extends StatefulWidget {
  const SheduledWidget({super.key});

  @override
  State<SheduledWidget> createState() => _SheduledWidgetState();
}

class _SheduledWidgetState extends State<SheduledWidget> {
  final shecudleData = SheduleData();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          "Shedule",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
            color: secondaryColor,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        //Show data
        for (var index = 0; index < shecudleData.sheduleTask.length; index++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: CustomCard(
              color: lineColor,
              childWidget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shecudleData.sheduleTask[index].title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: secondaryColor,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        shecudleData.sheduleTask[index].data,
                        style: const TextStyle(
                          fontSize: 11,
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.alarm,
                    color: secondaryColor,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
