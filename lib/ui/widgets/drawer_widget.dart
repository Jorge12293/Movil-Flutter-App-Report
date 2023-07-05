import 'package:app_report/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

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
                color: AppColors.secondary,
              ),
              child:DrawerHeader(
                child: Row(
                  children:const [
                    Icon(Icons.donut_small,color: AppColors.contentColorGreen,size: 30),
                    SizedBox(width: 10),
                    Text(
                      'Gráfico',
                      style: TextStyle(
                        color: AppColors.contentColorWhite,
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
                Navigator.pushNamed(context, 'company');
              },
            ),
            ListTile(
              leading:const Hero(
                tag: 'cityTag',
                child:Icon(Icons.poll)
              ),
              title: const Text('Ciudades'),
              onTap: () {
                Navigator.pushNamed(context, 'city');
               },
            ),
          ],
        ),
      );
  }
}

