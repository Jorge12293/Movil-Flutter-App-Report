import 'package:app_report/providers/report_provider.dart';
import 'package:app_report/ui/pages/company/company_view.dart';
import 'package:app_report/ui/pages/company/company_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/methods/methods_reports.dart';
import '../../widgets/app_bar_tag.dart';


class CompanyPage extends StatefulWidget {
  const CompanyPage({super.key});

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {

  @override
  Widget build(BuildContext context) {
    final listReport = Provider.of<ReportProvider>(context).listReport;
    List<String> listNameCompany = listNameCompanyFilterUnique(listReport);
    List<String> listNameTypeCar = listNameTypeCarFilterUnique(listReport);   
    return ChangeNotifierProvider(
      create: (context) => CompanyViewProvider(listNameCompany,listNameTypeCar ),
      child: Scaffold(
        appBar: appBarTag('Empresas','companyTag',Icons.poll),
        body: const CompanyView()
      ),
    );
  }
}


