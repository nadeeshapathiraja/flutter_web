import 'package:flutter/material.dart';

import 'graph_model.dart';

class BarGraphModel {
  final String lable;
  final Color color;
  final List<GraphModel> graph;

  BarGraphModel({
    required this.lable,
    required this.color,
    required this.graph,
  });
}
