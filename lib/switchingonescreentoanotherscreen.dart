import 'package:flutter/material.dart';
import 'package:practice_dart_ui/statelessstatefullwidget.dart';

import 'another_screen.dart';
void main(){
  runApp(DashboardScreen());

}
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreenApp(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
          color: Colors.yellow,

        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: Colors.yellow,
          )
        )
      ),
    );
  }
}
class DashboardScreenApp extends StatefulWidget {
  const DashboardScreenApp({super.key});

  @override
  State<DashboardScreenApp> createState() => _DashboardScreenAppState();
}

class _DashboardScreenAppState extends State<DashboardScreenApp> {
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

       SizedBox(height: 100,),
        Text("DashBoard Screen",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
          SizedBox(height: 11,),
          TextField(controller: name,),
          SizedBox(height: 11,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text("Welcome..",style: TextStyle(color: Colors.black,fontSize: 34),),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                     return DashBoardAnotherScreen(name.text.toString());
                }));
              }, child: Text("Button")),
            ],
          )




        ],
      ),
    );
  }
}

