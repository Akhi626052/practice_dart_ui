import 'package:flutter/cupertino.dart';

class counterProvider extends ChangeNotifier{
  int counter = 0;
  void increment(){
    counter++;
    notifyListeners();
  }
}