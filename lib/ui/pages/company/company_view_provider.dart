import 'package:flutter/material.dart';

class CompanyViewProvider extends ChangeNotifier {
  List<String> _listNameCompany;
  List<String> _listNameTypeCar;
  CompanyViewProvider(this._listNameCompany,this._listNameTypeCar);

  List<String>  get listNameCompany => _listNameCompany;
  set listNameCompany(List<String>  value){
    _listNameCompany = value;
    notifyListeners();
  }

  List<String>  get listNameTypeCar => _listNameTypeCar;
  set listNameTypeCar(List<String>  value){
    _listNameTypeCar = value;
    notifyListeners();
  }


  List<String> _listNameCompanySelect = [];
  List<String>  get listNameCompanySelect => _listNameCompanySelect;
  set listNameCompanySelect(List<String>  value){
    _listNameCompanySelect = value;
    notifyListeners();
  }

  List<String> _listNameTypeCarSelect = [];
  List<String>  get listNameTypeCarSelect => _listNameTypeCarSelect;
  set listNameTypeCarSelect(List<String>  value){
    _listNameTypeCarSelect = value;
    notifyListeners();
  }


}
