

import 'package:flutter/material.dart';
import 'package:app_report/domain/class/report.dart';

class ReportProvider extends ChangeNotifier {
  List<Report>  _listReport =[];

  List<Report>  get listReport=> _listReport;
  set listReport(List<Report>  value){
    _listReport = value;
    notifyListeners();
  }  
}