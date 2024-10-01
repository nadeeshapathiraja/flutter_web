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
        children: const [],
      ),
    );
  }
}
