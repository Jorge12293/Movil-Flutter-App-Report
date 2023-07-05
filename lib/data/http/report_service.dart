import 'package:app_report/data/global/urls_http.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ReportService {
   static Future<Response?> listReports() async{
    try {
      final response = await http.get(Uri.parse(urlListReportLimit))
                                 .timeout(const Duration(seconds: 30));
      return response;
    } catch (e, stackTrace) {
      print('Error en la solicitud HTTP: $e\n$stackTrace');
      return null;
    }
  }

}





