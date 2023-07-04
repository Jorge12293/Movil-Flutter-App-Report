import 'package:app_report/data/global/urls_http.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ReportService {
   static Future<Response?> listReports() async{
    try {
      final response = await http.get(Uri.parse(urlListReportLimit));
      return response;
    } catch (e) {
      return null;
    }
  }

}





