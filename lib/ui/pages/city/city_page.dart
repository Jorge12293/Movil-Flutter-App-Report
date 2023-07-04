import 'package:app_report/providers/report_provider.dart';
import 'package:app_report/ui/pages/city/city_view.dart';
import 'package:app_report/ui/pages/city/city_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/methods/methods_reports.dart';
import '../../widgets/app_bar_tag.dart';


class CityPage extends StatefulWidget {
  const CityPage({super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {

  @override
  Widget build(BuildContext context) {
    final listReport = Provider.of<ReportProvider>(context).listReport;
    List<String> listNameCity = listNameCityFilterUnique(listReport);
    List<String> listNameTypeCar = listNameTypeCarFilterUnique(listReport);   

    return ChangeNotifierProvider(
      create: (context) => CityViewProvider(listNameCity,listNameTypeCar ),
      child: Scaffold(
        appBar: appBarTag('Ciudades','cityTag',Icons.poll),
        body: const CityView()
      ),
    );
  }
}


