import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice_dart_ui/api_basic_understaning/api_intrigation_flow/model/todo_model.dart';
import 'package:practice_dart_ui/api_basic_understaning/api_intrigation_flow/service/api_service.dart';

// Learning ke liye var theek hai.
// API response ke liye Map<String, dynamic> ya List<dynamic> likhna zyada readable aur professional mana jata hai.




class TodoAppFl extends StatefulWidget {
  const TodoAppFl({super.key});

  @override
  State<TodoAppFl> createState() => _TodoAppFlState();
}

class _TodoAppFlState extends State<TodoAppFl> {
List<TodoModel> todoList = [];
  @override
  void initState(){
    super.initState();
    loadData();
  }
  Future<void> loadData() async {
    ApiService apiService = ApiService();
    List<TodoModel> data = await apiService.getData();
    setState(() {
      todoList = data;
    });
    print("todo List Data: ${todoList}");

  }

  // TodoModel? todo;
  // List<TodoModel> todoList = []; // 1 changes
  // void getData() async{
  //   var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos/"));
  //
  //   if(response.statusCode == 200){
  //     // var data = response.body;
  //     // String data = response.body;
  //     String data = response.body;
  //
  //
  //
  //     // Map<String, dynamic>
  //     List<dynamic> jsonDt = jsonDecode(data);
  //     // jsonDecode() ek JSON object return kar raha hai, jo is API ke case me:
  //     // Dart khud type infer kar leta hai.(var)
  //     // TodoModel todo = TodoModel.fromJson(jsonDt);
  //     setState(() {
  //
  //       // todoList = TodoModel.fromJson(jsonDt);
  //       todoList = jsonDt
  //           .map((e) => TodoModel.fromJson(e))
  //           .toList();
  //
  //
  //
  //     });
  //
  //     print("Hello Words ${jsonDt[0]["title"]}---- -");
  //   }else{
  //     print("error-------------------------------");
  //   }
  // }


  @override
  Widget build(BuildContext context) {

    return todoList.isEmpty ? Center(child: CircularProgressIndicator()) : Scaffold(
      body: SingleChildScrollView(

        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [

              SizedBox(height: 40,),
              Text(todoList[0].title ?? "",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,letterSpacing: 4,backgroundColor: Colors.yellow,),),
              SizedBox(height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                key: Key("cl"),
                mainAxisSize: MainAxisSize.max,
                textDirection: TextDirection.rtl,
                spacing: 10,
                textBaseline: TextBaseline.alphabetic,


                children: [
                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 2),
                      content: Text("Data Saved Success Fully"),
                    ));



                  }, child: Text("Submitted"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: 1, color: Colors.black),
                    ),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 30)

                  ),
                  ),








                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

