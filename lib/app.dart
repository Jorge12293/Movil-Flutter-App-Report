import 'package:app_report/ui/routes/app_routes.dart';
import 'package:app_report/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report App',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      initialRoute: AppRoutes.initialRoute,
      routes:AppRoutes.routes,
    );
  }
}