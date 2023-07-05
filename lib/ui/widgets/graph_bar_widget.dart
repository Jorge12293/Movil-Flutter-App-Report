import 'package:app_report/ui/resources/app_colors.dart';
import 'package:app_report/ui/widgets/indicator_graph.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../utils/class/graph_bar_item.dart';

class GraphBarWidget extends StatefulWidget {
  final String title;
  final List<GraphBarItem> listGraphBarItem;

  const GraphBarWidget({
    super.key,
    required this.title,
    required this.listGraphBarItem
  });
  
  @override
  State<GraphBarWidget> createState() => _GraphBarWidgetState();
}

class _GraphBarWidgetState extends State<GraphBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child:Column(
        children: [
          const SizedBox( height: 10),
          Text(widget.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
          const Divider(
            color: AppColors.contentColorWhite,
          ),  
          Container(
            height: 200,
            margin:const EdgeInsets.only(top: 10),
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              series: <ChartSeries>[
                StackedColumnSeries<GraphBarItem, String>(
                 dataSource: widget.listGraphBarItem,
                  xValueMapper: (GraphBarItem data, _) => data.category,
                  yValueMapper: (GraphBarItem data, _) => data.value,
                  pointColorMapper: (GraphBarItem data, _) => data.barColor,
                  dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    labelAlignment: ChartDataLabelAlignment.top,
                    labelPosition: ChartDataLabelPosition.outside,
                    builder: (dynamic data, dynamic series, dynamic point, int index, _) {
                      return Card(
                        elevation: 3,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text('${data.value.toStringAsFixed(0)}',
                            style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                          )
                      );
                    },
                  ),
                ),
              ],
            )
          ),
          Card(
            elevation: 5,
            color: AppColors.contentColorGrey,
            child: Container(
              margin: EdgeInsets.only(top:5,bottom: 5),
              child: Column(    
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List<Widget>.from(
                  widget.listGraphBarItem.map((item) => Container(
                    margin: const EdgeInsets.only(left: 10,bottom: 10),
                    child: IndicatorGraph(
                      color: item.barColor,
                      text: item.label,
                      isSquare: true,
                      value: item.value.toInt(),
                    )
                  )
                ), 
                ),
              )
            )
          ),
        ],
      )
    );
  }
}