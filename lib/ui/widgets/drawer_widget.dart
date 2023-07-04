
import 'package:app_report/ui/pages/company/company_page.dart';
import 'package:flutter/material.dart';

import '../pages/city/city_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Drawer(
        width: 250,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child:DrawerHeader(
                child: Row(
                  children:const [
                    Icon(Icons.donut_small,color: Colors.white,size: 30),
                    SizedBox(width: 10),
                    Text(
                      'Gráfico',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            ListTile(
              leading:const Hero(
                tag: 'companyTag',
                child:Icon(Icons.poll)
              ),
              title: const Text('Empresas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CompanyPage()),
                );
               },
            ),
            ListTile(
              leading:const Hero(
                tag: 'cityTag',
                child:Icon(Icons.poll)
              ),
              title: const Text('Ciudades'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CityPage()),
                );
               },
            ),
          ],
        ),
      );
  }
}

