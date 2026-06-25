import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:get/get.dart';

class HomeController extends GetxController{
   int count = 0;
   void increment(){
     count++;
     update();
   }
}

