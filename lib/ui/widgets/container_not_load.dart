import 'package:app_report/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';

class ContainerNotLoad extends StatelessWidget {
  const ContainerNotLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          margin: const EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.wifi_find,color: AppColors.contentColorGrey,size: 40),
              Text('No fue posible caragar Información.',
                style: TextStyle(fontWeight: FontWeight.bold)),
              Divider(),
              Text('Revisar que se encuentre conectado a la red.',
                style: TextStyle(color: AppColors.contentColorGrey)),
            ],
          )
        ),
      ),
    );
  }
}