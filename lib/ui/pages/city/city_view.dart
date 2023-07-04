import 'package:app_report/domain/class/report.dart';
import 'package:app_report/providers/report_provider.dart';
import 'package:app_report/ui/pages/city/city_view_provider.dart';
import 'package:app_report/ui/pages/company/company_view_provider.dart';
import 'package:app_report/utils/methods/methods_reports.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widgets/container_group_check_box.dart';
import '../../widgets/graph_bar_canal.dart';
import '../../widgets/graph_bar_medio.dart';
import '../../widgets/graph_pie_platform.dart';
import '../../widgets/graph_pie_provenance_leads.dart';

class CityView extends StatefulWidget {
  const CityView({super.key});
  @override
  State<CityView> createState() => _CityViewState();
}

class _CityViewState extends State<CityView> {
  
  void saveListOptionsCity(List<String> listOption){
    final provider = Provider.of<CityViewProvider>(context,listen: false);
    provider.listNameCitySelect = listOption; 
  }

  void saveListOptionsTypeCar(List<String> listOption){
    final provider = Provider.of<CityViewProvider>(context,listen: false);
    provider.listNameTypeCarSelect = listOption; 
  }

  @override
  Widget build(BuildContext context) {
    final listOptionCity = Provider.of<CityViewProvider>(context).listNameCity;
    final listOptionTypeCar = Provider.of<CityViewProvider>(context).listNameTypeCar;

    return Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Column(
        children: [
          ExpansionTile(
            collapsedIconColor:Colors.black,
            title: const Text(
              'Ciudad Filtrar Información',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ContainerGroupCheckBox(
                    title: 'Ciudad',
                    listOption: listOptionCity,
                    handleSaveListOptions: saveListOptionsCity,
                    width: 170,
                    height: 170,
                  ),
                  ContainerGroupCheckBox(
                    title: 'Cat Vehículo',
                    listOption: listOptionTypeCar,
                    handleSaveListOptions: saveListOptionsTypeCar,
                    width: 155,
                    height: 150,
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            height: 5,
            thickness: 2,
            color: Colors.blue,
          ),
          Expanded(
            child: ListView(
              children:const [
                ContainerGraphs()
              ],
            ),
          ),
        ],
      )
    );

  }
}

class ContainerGraphs extends StatelessWidget {
  const ContainerGraphs({super.key});
  @override
  Widget build(BuildContext context) {

    List<Report> listReport = Provider.of<ReportProvider>(context).listReport;
    List<String> listNameCitySelect = Provider.of<CityViewProvider>(context).listNameCitySelect;
    List<String> listNameTypeCarSelect  = Provider.of<CityViewProvider>(context).listNameTypeCarSelect;
    List<Report> listReportFilter = filterCityAndCatCar(listReport,listNameCitySelect,listNameTypeCarSelect);
    
    return Column(
      children: [
        GraphPieProvenanceLeads(listReport: listReportFilter),
        const SizedBox(height: 10),
        GraphBarCanal(listReport: listReportFilter),
        const SizedBox(height: 10),
        GraphPiePlatform(listReport: listReportFilter),
        const SizedBox(height: 10),
        GraphBarMedio(listReport: listReportFilter),
        const SizedBox(height: 20),
      ],
    );
  }
}


