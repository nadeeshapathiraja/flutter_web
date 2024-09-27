import 'package:flutter_webtest/models/health_activity_model.dart';

class HealthDetails {
  final heltDetailslist = [
    HealthModel(
      icon: "assets/icons/burn.png",
      value: "230",
      title: "Water Level",
    ),
    HealthModel(
      icon: "assets/icons/steps.png",
      value: "7.8K",
      title: "Miles Steps",
    ),
    HealthModel(
      icon: "assets/icons/distance.png",
      value: "340m",
      title: "Covered Distance",
    ),
    HealthModel(
      icon: "assets/icons/sleep.png",
      value: "7h48m",
      title: "Sleep",
    ),
  ];
}
