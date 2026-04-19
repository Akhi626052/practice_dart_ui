import 'dart:async';

import 'package:flutter/material.dart';

import 'DashBordPage_splacescreen.dart';
void main(){
  runApp(MaterialApp(
    home: DashBoardScreen(),
    debugShowCheckedModeBanner: false,
    color: Colors.blue,
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.blue,
      ),
      textTheme: TextTheme(
        labelLarge: TextStyle(color: Colors.blue)
      ),
    ),
  ));
}

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> DashBordPage()));
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Welcome...'),


        ],
      ),
    );
  }
}




