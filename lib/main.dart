

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/report_provider.dart';
import 'app.dart';


void main() async{
  runApp(
    MultiProvider(
      providers:  [
        ChangeNotifierProvider(create: (_)=> ReportProvider()),
      ],
      child: const App(),
    )
  );
}


