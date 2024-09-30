import 'package:flutter/material.dart';
import 'package:flutter_webtest/models/bar_graph_model.dart';
import 'package:flutter_webtest/models/graph_model.dart';

class BarGraphData {
  final data = [
    BarGraphModel(
      lable: "Carolise Burned",
      color: Colors.amber,
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 8),
        GraphModel(x: 5, y: 6),
      ],
    ),
    BarGraphModel(
      lable: "Product",
      color: Colors.green,
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 8),
        GraphModel(x: 5, y: 6),
      ],
    ),
    BarGraphModel(
      lable: "Employees",
      color: Colors.blueAccent,
      graph: [
        GraphModel(x: 0, y: 8),
        GraphModel(x: 1, y: 10),
        GraphModel(x: 2, y: 7),
        GraphModel(x: 3, y: 4),
        GraphModel(x: 4, y: 8),
        GraphModel(x: 5, y: 5),
      ],
    ),
  ];
  final bottomTitle = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
}
