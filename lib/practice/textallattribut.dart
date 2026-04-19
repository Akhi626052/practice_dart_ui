import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MyApp(),
  debugShowCheckedModeBanner: false,
  ));}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("data.................... Herro MY ",style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 5,
              wordSpacing: 25,
              decoration: TextDecoration.underline,
              decorationColor: Colors.green,
              decorationStyle: TextDecorationStyle.dashed,
              decorationThickness: 1,
              shadows: [
                Shadow(
                  color: Colors.green,
                  blurRadius: 10,
                  offset: Offset(5,5),
                )
              ],
              background: Paint()..color = Colors.yellow.withOpacity(0.5),
          ),),
          
          
          
        ],
      ),
    );
  }
}
