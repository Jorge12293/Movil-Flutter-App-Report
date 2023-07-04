import 'package:flutter/material.dart';

class CityViewProvider extends ChangeNotifier {
  List<String> _listNameCity;
  List<String> _listNameTypeCar;
  
  CityViewProvider(this._listNameCity,this._listNameTypeCar);

  List<String>  get listNameCity => _listNameCity;
  set listNameCity(List<String>  value){
    _listNameCity = value;
    notifyListeners();
  }

  List<String>  get listNameTypeCar => _listNameTypeCar;
  set listNameTypeCar(List<String>  value){
    _listNameTypeCar = value;
    notifyListeners();
  }


  List<String> _listNameCitySelect = [];
  List<String>  get listNameCitySelect => _listNameCitySelect;
  set listNameCitySelect(List<String>  value){
    _listNameCitySelect = value;
    notifyListeners();
  }

  List<String> _listNameTypeCarSelect = [];
  List<String>  get listNameTypeCarSelect => _listNameTypeCarSelect;
  set listNameTypeCarSelect(List<String>  value){
    _listNameTypeCarSelect = value;
    notifyListeners();
  }


}
