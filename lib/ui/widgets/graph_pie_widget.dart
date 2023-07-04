import 'package:app_report/utils/class/graph_pie_item.dart';
import 'package:app_report/ui/widgets/indicator_graph.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class GraphPieWidget extends StatefulWidget {
  final List<GraphPieItem> listGraphItem;
  final double amount;
  final String titleGraph;
  const GraphPieWidget({
    super.key,
    required this.listGraphItem,
    required this.amount,
    required this.titleGraph
  });

  @override
  State<GraphPieWidget> createState() => _GraphPieWidgetState();
}

class _GraphPieWidgetState extends State<GraphPieWidget> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return  
     Card(
        elevation: 5,
        child:Column(
          children: [
            AspectRatio(
              aspectRatio: 1.8,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text(widget.titleGraph,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: PieChart(
                          PieChartData(
                            pieTouchData: PieTouchData(
                              touchCallback: (FlTouchEvent event, pieTouchResponse) {
                                setState(() {
                                  if (!event.isInterestedForInteractions ||
                                      pieTouchResponse == null ||
                                      pieTouchResponse.touchedSection == null) {
                                      touchedIndex = -1;
                                    return;
                                  }
                                  touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
                                });
                              },
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            sectionsSpace: 0,
                            centerSpaceRadius: 10,
                            sections: getListPieChartSectionData(),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List<Widget>.from(
                  widget.listGraphItem.map((item) => Container(
                    color: item.index == touchedIndex ? Colors.grey.withOpacity(0.4):Colors.white,
                    margin: const EdgeInsets.only(bottom: 5,top: 5,right: 10),
                    child: IndicatorGraph(
                      color: item.color,
                      text: item.name,
                      isSquare: true,
                      value: item.value.toInt(),
                    )
                  )
                ), 
                ),
              )
            ),
          ],
        )
    
      );
  }

  List<PieChartSectionData> getListPieChartSectionData() {
    List<PieChartSectionData> listPieChartSectionData=[];

    for (var item in widget.listGraphItem) {
      final isTouched = (item.index-1) == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      
      listPieChartSectionData.add(
        PieChartSectionData(
            color: item.color,
            value: (item.value / widget.amount) * 100,
            title: '${((item.value / widget.amount) * 100).toStringAsFixed(2)} %',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: AppColors.mainTextColor1,
              shadows: shadows,
            ),
          )
      );  
    }
    
    return listPieChartSectionData;
  }

}


