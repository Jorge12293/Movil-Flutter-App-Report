import 'package:flutter/material.dart';

class  GraphBarItem {
  String label;
  String category;
  double value;
  Color barColor;
  GraphBarItem({
    required this.label,
    required this.category, 
    required this.value, 
    required this.barColor
  });
}