import 'package:flutter/material.dart';

class settingsProviderAnd extends ChangeNotifier{
  bool isCheck = true;
  bool check = false;
  void switc(value){
    isCheck=value;
    notifyListeners();
  }

  void swith(value){
    check=value;
    notifyListeners();
  }
}