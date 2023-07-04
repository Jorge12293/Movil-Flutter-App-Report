
import 'package:app_report/utils/class/graph_pie_item.dart';
import 'package:app_report/utils/methods/colors.dart';

import '../../domain/class/report.dart';
import '../class/graph_bar_item.dart';


List<Report> filterCityAndCatCar(List<Report> listReport,List<String> listNameCitySelect,List<String> listNameTypeCarSelect){
  List<Report> listReportFilter = [];
  
  if(listNameCitySelect.isEmpty && listNameTypeCarSelect.isEmpty){
    return listReport;
  }

  if(listNameCitySelect.isNotEmpty && listNameTypeCarSelect.isNotEmpty){
      listReport.forEach((element) {
        if(listNameCitySelect.contains(element.conNomCiudad) && listNameTypeCarSelect.contains(element.conNomCatVehiculo)){
          listReportFilter.add(element); 
        }
      });
      return listReportFilter;
  }

  if(listNameCitySelect.isNotEmpty && listNameTypeCarSelect.isEmpty){
      listReport.forEach((element) {
        if(listNameCitySelect.contains(element.conNomCiudad)){
          listReportFilter.add(element); 
        }
      });
      return listReportFilter;
  }
  
  if(listNameCitySelect.isEmpty && listNameTypeCarSelect.isNotEmpty){
      listReport.forEach((element) {
        if(listNameTypeCarSelect.contains(element.conNomCatVehiculo)){
          listReportFilter.add(element); 
        }
      });
      return listReportFilter;
  }
  return listReportFilter;
}

List<Report> filterCompanyAndCatCar(List<Report> listReport,List<String> listNameCompanySelect,List<String> listNameTypeCarSelect){
  List<Report> listReportFilter = [];
  
  if(listNameCompanySelect.isEmpty && listNameTypeCarSelect.isEmpty){
    return listReport;
  }

  if(listNameCompanySelect.isNotEmpty && listNameTypeCarSelect.isNotEmpty){
      listReport.forEach((element) {
        if(listNameCompanySelect.contains(element.conNomEmpresa) && listNameTypeCarSelect.contains(element.conNomCatVehiculo)){
          listReportFilter.add(element); 
        }
      });
      return listReportFilter;
  }

  if(listNameCompanySelect.isNotEmpty && listNameTypeCarSelect.isEmpty){
      listReport.forEach((element) {
        if(listNameCompanySelect.contains(element.conNomEmpresa)){
          listReportFilter.add(element); 
        }
      });
      return listReportFilter;
  }
  
  if(listNameCompanySelect.isEmpty && listNameTypeCarSelect.isNotEmpty){
      listReport.forEach((element) {
        if(listNameTypeCarSelect.contains(element.conNomCatVehiculo)){
          listReportFilter.add(element); 
        }
      });
      return listReportFilter;
  }
  return listReportFilter;
}


List<String> listNameCityFilterUnique(List<Report> listReport) {
  List<String> uniqueNames = listReport.map((item) => item.conNomCiudad).toSet().toList();
  uniqueNames.sort();
  return uniqueNames;
}


List<String> listNameCompanyFilterUnique(List<Report> listReport) {
  List<String> uniqueNames = listReport.map((item) => item.conNomEmpresa).toSet().toList();
  uniqueNames.sort();
  return uniqueNames;
}

List<String> listNameTypeCarFilterUnique(List<Report> listReport) {
  List<String> uniqueNames = listReport.map((item) => item.conNomCatVehiculo).toSet().toList();
  uniqueNames.sort();
  return uniqueNames;
}




List<GraphPieItem> listReportsToListGraphPieItemByProvenanceLeads(List<Report> listReport){
  List<GraphPieItem> listGraphItem = [];
  // List Provenance   
  List<String> uniqueNames = listReport.map((item) => item.conSegmentacion).toSet().toList();
  uniqueNames.sort();
  // Filter Provenance   
  uniqueNames.asMap().forEach((index,segmentacion) {
    List<Report> listReportFilter = listReport.where((element) => element.conSegmentacion == segmentacion).toList();
      if(listReportFilter.isNotEmpty){
        listGraphItem.add(
          GraphPieItem(
            index: index, 
            name: segmentacion, 
            value: double.parse(listReportFilter.length.toString()), 
            color: generateRandomColor(),
          ),
        ); 
      } 
  });
  return listGraphItem;
}

List<GraphPieItem> listReportsToListGraphPieItemByPlatform(List<Report> listReport){
  List<GraphPieItem> listGraphItem = [];
  // List Provenance   
  List<String> uniqueNames = listReport.map((item) => item.conNomPlatfIng).toSet().toList();
  uniqueNames.sort();
  // Filter Provenance   
  uniqueNames.asMap().forEach((index,conNomPlatfIng) {
    List<Report> listReportFilter = listReport.where((element) => element.conNomPlatfIng == conNomPlatfIng).toList();
      if(listReportFilter.isNotEmpty){
        listGraphItem.add(
          GraphPieItem(
            index: index, 
            name: conNomPlatfIng, 
            value: double.parse(listReportFilter.length.toString()), 
            color: generateRandomColor(),
          ),
        ); 
      } 
  });
  return listGraphItem;
}

List<GraphBarItem> listReportToListGraphBarItemByMedio(List<Report> listReport){
  List<GraphBarItem> listGraphBarItem = [];  
  // Types Platform
  List<String> uniqueNames = listReport.map((item) => item.conNomMedio).toSet().toList();
  uniqueNames.sort();
  // Filter Platform Type List
  uniqueNames.asMap().forEach((index,conNomMedio) {
    List<Report> listReportFilter = listReport.where((element) => ( element.conNomMedio == conNomMedio)).toList();
    if(listReportFilter.isNotEmpty){
      listGraphBarItem.add(
        GraphBarItem(
          label:conNomMedio,
          category:conNomMedio.length>3
            ? conNomMedio.substring(0, 3)
            : conNomMedio,
          value:listReportFilter.length.toDouble(),
          barColor: generateRandomColor(), 
        ),
      ); 
    } 
  });
  return listGraphBarItem;
}

List<GraphBarItem> listReportToListGraphBarItemByCanal(List<Report> listReport){
  List<GraphBarItem> listGraphBarItem = [];  
  // Types Canal
  List<String> uniqueNames = listReport.map((item) => item.conNomCanal).toSet().toList();
  uniqueNames.sort();
  // Filter Canal Type List
  uniqueNames.asMap().forEach((index,conNomCanal) {
    List<Report> listReportFilter = listReport.where((element) => ( element.conNomCanal == conNomCanal)).toList();
    if(listReportFilter.isNotEmpty){
      listGraphBarItem.add(
        GraphBarItem(
          label:conNomCanal,
          category:conNomCanal.length>3
            ? conNomCanal.substring(0, 3)
            : conNomCanal,
          value:listReportFilter.length.toDouble(),
          barColor: generateRandomColor(), 
        ),
      ); 
    } 
  });
  return listGraphBarItem;
}