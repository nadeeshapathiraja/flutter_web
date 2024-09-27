import 'package:flutter/material.dart';
import 'package:flutter_webtest/constants/colors.dart';

class CustomCard extends StatelessWidget {
  final Widget childWidget;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  const CustomCard({
    super.key,
    required this.childWidget,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? cardBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12),
        child: childWidget,
      ),
    );
  }
}
