import 'dart:convert';

import 'package:app_report/data/http/report_service.dart';
import 'package:app_report/domain/class/report.dart';
import 'package:app_report/providers/report_provider.dart';
import 'package:app_report/ui/pages/home/home_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../domain/responses/response_list_report.dart';
import '../../../utils/methods/methods_reports.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/loader_widget.dart';
import 'home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Report> listReport = [];
  bool isLoadData = false;

  @override
  void initState() {
    loadData();
    super.initState();
  }

  Future<void> loadData() async {
    final reportProvider = Provider.of<ReportProvider>(context, listen: false);
    isLoadData=true;
    setState(() {});
    final response = await ReportService.listReports();
    print(response?.statusCode);
    if(response != null && response.statusCode==200){
      listReport = responseListReportFromJson(utf8.decode(response.bodyBytes));  
      reportProvider.listReport = listReport;
    }
    isLoadData=false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    if(isLoadData){
      return const Scaffold(
        body: LoaderWidget(title:'Cargando Reporte')
      );
    }


    if(!isLoadData && listReport.isEmpty){
      return const Scaffold(
          body: Center(
            child: Text('No fue posible caragar información.'),
          ),
        );
    }

    return ChangeNotifierProvider(
      create: (context) => HomeViewProvider(listNameCompanyFilterUnique(listReport)[0]),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Gráficos"),
        ),
        drawer:const DrawerWidget(),
        body: const HomeView(),
      ),
    );
  }
}