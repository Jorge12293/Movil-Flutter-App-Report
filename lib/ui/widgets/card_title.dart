import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  final String title;
  const CardTitle({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin:const EdgeInsets.only(top: 5,bottom: 5),
        width: double.infinity,
        child: Column(
          children: [
            Text('REPORTE: $title',
              style: const TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
            const Divider(height: 2)  
          ],
        )
      ),
    );
  }
}