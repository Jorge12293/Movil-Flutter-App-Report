

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/report_provider.dart';

import 'ui/pages/home/home_page.dart';
import 'ui/pages/city/city_page.dart';
import 'ui/pages/company/company_page.dart';

void main() async{
  runApp(
    MultiProvider(
      providers:  [
        ChangeNotifierProvider(create: (_)=> ReportProvider()),
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
       routes: {
        "home":(context)=> const HomePage(),
        "company":(context)=> const CompanyPage(),
        "city":(context)=> const CityPage(),
      },
    );
  }
}
