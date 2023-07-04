import 'package:flutter/material.dart';

class HomeViewProvider extends ChangeNotifier {
  String _nameSelectCompany;
  HomeViewProvider(this._nameSelectCompany);

  String  get nameSelectCompany=> _nameSelectCompany;
  set nameSelectCompany(String  value){
    _nameSelectCompany = value;
    notifyListeners();
  }  

}