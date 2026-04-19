import 'package:flutter/material.dart';
class CounterProvider extends ChangeNotifier{
  int _counter = 0;
  int getCount() => _counter;
  void increment(){
    _counter++;
    notifyListeners();
  }
  void decrement(){
    if(_counter > 0){
      _counter--;
      notifyListeners();
    }
  }
}