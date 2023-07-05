import 'package:app_report/ui/resources/app_colors.dart';
import 'package:app_report/ui/widgets/card_title.dart';
import 'package:app_report/ui/widgets/graph_bar_medio.dart';
import 'package:app_report/ui/widgets/graph_pie_provenance_leads.dart';
import 'package:app_report/providers/report_provider.dart';
import 'package:app_report/ui/pages/home/home_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../domain/class/report.dart';
import '../../../utils/methods/methods_reports.dart';
import '../../widgets/graph_bar_canal.dart';
import '../../widgets/graph_pie_platform.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final listReport = Provider.of<ReportProvider>(context).listReport;
    final nameSelectCompany = Provider.of<HomeViewProvider>(context).nameSelectCompany;
    List<Report> listReportFilter = listReport.where((element) => element.conNomEmpresa == nameSelectCompany).toList();

    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Column(
        children:[

          CardTitle(title: nameSelectCompany),
          const ListCompany(),
          GraphPieProvenanceLeads(listReport: listReportFilter),
          const SizedBox(height: 10),
          GraphBarCanal(listReport: listReportFilter),
          const SizedBox(height: 10),
          GraphPiePlatform(listReport: listReportFilter),
          const SizedBox(height: 10),
          GraphBarMedio(listReport: listReportFilter),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}


class ListCompany extends StatelessWidget {
  const ListCompany({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        elevation: 5,
        child: Consumer<ReportProvider>(
        builder: (context, provider, child) {
          final List<String> listNameCompany = listNameCompanyFilterUnique(provider.listReport);
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listNameCompany.length,
              itemBuilder: (context, index) => CardCompanyItem(listNameCompany[index])
            );
          }
        )
      )
    );
  }
}

class CardCompanyItem extends StatelessWidget {
  final String title;
  const CardCompanyItem(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeViewProvider>(context);
    return GestureDetector(
      onTap: () {
        provider.nameSelectCompany = title;
      },
      child: Container(
      width: 130,
      margin: const EdgeInsets.only(left: 5,right: 5,bottom: 10,top: 10),
        child: Card(
          elevation: 5,
          color: provider.nameSelectCompany == title 
                ? AppColors.contentColorGreen 
                : AppColors.contentColorWhite,
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: provider.nameSelectCompany == title ? Colors.white : Colors.black,
                  ),
                ),
              )
            ),
        ),
      )
    );
  }
}

  
