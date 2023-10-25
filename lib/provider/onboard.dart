import 'package:flutter/material.dart';

class OnboardProvider extends ChangeNotifier {
  int _index = 0;
  int get index => _index;
  String? _name;
  String? get name => _name;


  setIndex (int i){
    _index = i;
    notifyListeners();
  }
  setName (String i) {
    _name = i;
    notifyListeners();
  }
}
