import 'package:app_report/utils/class/graph_bar_item.dart';
import 'package:flutter/material.dart';

import '../../domain/class/report.dart';
import '../../utils/methods/methods_reports.dart';
import 'graph_bar_widget.dart';

class GraphBarCanal extends StatelessWidget {
  final List<Report> listReport;
  const GraphBarCanal({
    super.key,
    required this.listReport
  });

  @override
  Widget build(BuildContext context) {
    final List<GraphBarItem> listGraphBarItem = listReportToListGraphBarItemByCanal(listReport);
    return GraphBarWidget( 
      title: 'VENTAS DETAL POR CANAL',
      listGraphBarItem: listGraphBarItem,
    );
  
  }
}