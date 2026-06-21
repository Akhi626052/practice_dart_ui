import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Learning ke liye var theek hai.
// API response ke liye Map<String, dynamic> ya List<dynamic> likhna zyada readable aur professional mana jata hai.


void main(){
  runApp(
    TodoApp(),
  );
}
class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoAppFl(),
    );
  }
}
class TodoAppFl extends StatefulWidget {
  const TodoAppFl({super.key});

  @override
  State<TodoAppFl> createState() => _TodoAppFlState();
}

class _TodoAppFlState extends State<TodoAppFl> {

  @override
  void initState(){
    super.initState();
    getData();
  }

  TodoModel? todo;
  void getData() async{
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));

    if(response.statusCode == 200){
      // var data = response.body;
      String data = response.body;
      Map<String, dynamic> jsonDt = jsonDecode(data);
      // jsonDecode() ek JSON object return kar raha hai, jo is API ke case me:
      // Dart khud type infer kar leta hai.(var)
      // TodoModel todo = TodoModel.fromJson(jsonDt);
      setState(() {

        todo = TodoModel.fromJson(jsonDecode(response.body));
      });
      print("Hello Words ${jsonDt["title"]}---- -");
    }else{
      print("error-------------------------------");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [

            SizedBox(height: 40,),
            Text(todo?.title ?? "",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 4,backgroundColor: Colors.yellow,),),


          ],
        ),
      ),
    );
  }
}


class TodoModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  TodoModel.fromJson(Map<String, dynamic> json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    completed = json["completed"];
  }
}