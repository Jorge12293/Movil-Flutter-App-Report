import 'dart:convert';
import '../class/report.dart';
List<Report> responseListReportFromJson(String str) => List<Report>.from(json.decode(str).map((x) => Report.fromJson(x)));
String responseListReportToJson(List<Report> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


