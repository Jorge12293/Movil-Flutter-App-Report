import 'package:app_report/ui/resources/app_colors.dart';
import 'package:flutter/material.dart';


AppBar appBarTag(title,nameTag,icon){
  return AppBar(
      title:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          Text(title),
          Hero(
            tag: nameTag,
            child:Icon(icon,color: AppColors.contentColorGreen)
          ),
        ],
      ),
    );
}