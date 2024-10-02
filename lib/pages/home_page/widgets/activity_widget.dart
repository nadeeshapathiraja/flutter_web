import 'package:flutter/material.dart';
import 'package:flutter_webtest/components/custom_card.dart';
import 'package:flutter_webtest/constants/colors.dart';
import 'package:flutter_webtest/data/health_details.dart';

import '../../../utils/responsive.dart';

class ActivityWidget extends StatefulWidget {
  const ActivityWidget({super.key});

  @override
  State<ActivityWidget> createState() => _ActivityWidgetState();
}

class _ActivityWidgetState extends State<ActivityWidget> {
  final healthModelDataList = HealthDetails();
  @override
  Widget build(BuildContext context) {
    final bool isDesktopSize = Responsive.isDesktop(context);
    return GridView.builder(
      shrinkWrap: true,
      itemCount: healthModelDataList.heltDetailslist.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isDesktopSize ? 4 : 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          childWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                healthModelDataList.heltDetailslist[index].icon,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 4),
                child: Text(
                  healthModelDataList.heltDetailslist[index].value,
                  style: const TextStyle(
                    color: secondaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                healthModelDataList.heltDetailslist[index].title,
                style: const TextStyle(
                  color: greyColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
