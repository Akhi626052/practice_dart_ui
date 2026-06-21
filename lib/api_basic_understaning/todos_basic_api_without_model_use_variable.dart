import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiIntrigationApp(),
    );
  }
}
class ApiIntrigationApp extends StatefulWidget {
  const ApiIntrigationApp({super.key});

  @override
  State<ApiIntrigationApp> createState() => _ApiIntrigationAppState();
}

class _ApiIntrigationAppState extends State<ApiIntrigationApp> {

  Map<String, dynamic>? myData;

  @override
  void initState(){
    super.initState();
    getData();
  }
  void getData() async{

   var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));

   if(response.statusCode == 200){
     var data = response.body;
     Map<String, dynamic> mpDt = jsonDecode(data);

     setState(() {
       myData = mpDt;
     });
     print(mpDt["title"] ?? "No Data Available");
     print("Hellow");
   }else{
     print("Error");
   }



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

           Text("data: ${myData?["title"]}"),


        ],
      ),
    );
  }
}
