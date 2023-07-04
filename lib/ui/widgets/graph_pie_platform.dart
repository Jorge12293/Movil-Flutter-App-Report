import 'package:app_report/ui/widgets/graph_pie_widget.dart';
import 'package:flutter/material.dart';

import '../../domain/class/report.dart';
import '../../utils/class/graph_pie_item.dart';
import '../../utils/methods/methods_reports.dart';

class GraphPiePlatform extends StatelessWidget {
  final List<Report> listReport;
  const GraphPiePlatform({
    super.key,
    required this.listReport
  });

  @override
  Widget build(BuildContext context) {
    List<GraphPieItem> listGraphItem = listReportsToListGraphPieItemByPlatform(listReport);
    final double amount = listGraphItem.fold(0, (previousValue, item) => previousValue + item.value);
    return  GraphPieWidget(
      listGraphItem: listGraphItem,
      amount: amount, 
      titleGraph: 'VENTA DETAL POR PLTAFORMA',
    );
  }
}