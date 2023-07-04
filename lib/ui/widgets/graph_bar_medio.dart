import 'package:app_report/utils/class/graph_bar_item.dart';
import 'package:flutter/material.dart';

import '../../domain/class/report.dart';
import '../../utils/methods/methods_reports.dart';
import 'graph_bar_widget.dart';

class GraphBarMedio extends StatelessWidget {
  final List<Report> listReport;
  const GraphBarMedio({
    super.key,
    required this.listReport
  });

  @override
  Widget build(BuildContext context) {
    final List<GraphBarItem> listGraphBarItem = listReportToListGraphBarItemByMedio(listReport);
    return GraphBarWidget( 
      title: 'VENTAS DETAL POR MEDIO',
      listGraphBarItem: listGraphBarItem,
    );
  
  }
}