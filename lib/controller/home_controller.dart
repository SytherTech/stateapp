import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  var number = 0;

  void addnumer() {
    number += 1;
    notifyListeners();
  }
}
