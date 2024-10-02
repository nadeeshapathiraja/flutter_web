import 'package:flutter/material.dart';
import 'package:flutter_webtest/components/custom_card.dart';
import 'package:flutter_webtest/constants/colors.dart';

class SummaryDetails extends StatefulWidget {
  const SummaryDetails({super.key});

  @override
  State<SummaryDetails> createState() => _SummaryDetailsState();
}

class _SummaryDetailsState extends State<SummaryDetails> {
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: lineColor,
      childWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails("Cal", "385"),
          buildDetails("Steps", "1000"),
          buildDetails("Distance", "7Km"),
          buildDetails("Sleep", "7h"),
        ],
      ),
    );
  }

  Widget buildDetails(String key, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [
        Text(
          key,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w900,
            color: greyColor,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: greyColor,
          ),
        ),
      ],
    );
  }
}
