import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedBottomAppbarOpt = 0;
  int _selectedTabBarObt = 0;
  int _flag = 0;

  int get selectedBottomAppbarOpt {
    return this._selectedBottomAppbarOpt;
  }

  set selectedBottomAppbarOpt(int val) {
    this._selectedBottomAppbarOpt = val;
    notifyListeners();
  }

  int get selectedTabBarObt {
    return this._selectedTabBarObt;
  }

  set selectedTabBarObt(int val) {
    this._selectedTabBarObt = val;
    notifyListeners();
  }

  int get flag {
    return this._flag;
  }

  set flag(int val) {
    this._flag = val;
    notifyListeners();
  }
}
