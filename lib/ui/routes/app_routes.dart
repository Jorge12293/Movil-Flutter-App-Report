import 'package:flutter/material.dart';

import 'package:app_report/ui/pages/city/city_page.dart';
import 'package:app_report/ui/pages/company/company_page.dart';
import 'package:app_report/ui/pages/home/home_page.dart';


class AppRoutes{
  static const initialRoute = 'home';
  static Map<String, Widget Function(BuildContext)> routes = {
    "home":(context)=> const HomePage(),
    "company":(context)=> const CompanyPage(),
    "city":(context)=> const CityPage(),
  };
}