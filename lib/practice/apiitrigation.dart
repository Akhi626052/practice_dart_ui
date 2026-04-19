import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main(){
  runApp(MaterialApp(
    home: ApiIntrigation(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.yellow
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(color: Colors.yellow,fontSize: 21),
        headlineMedium: TextStyle(color: Colors.yellowAccent, fontSize: 22)
      ),
    ),
  ));
}
class ApiIntrigation extends StatefulWidget {
  const ApiIntrigation({super.key});

  @override
  State<ApiIntrigation> createState() => _ApiIntrigationState();
}

class _ApiIntrigationState extends State<ApiIntrigation> {
  Map<String, dynamic>? data; // 👈 global state variable

  @override
  void initState() {
    super.initState();getData();

  }
  void getData() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));
    Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/todos/1");
    print("Scheme: ${uri.scheme}"); // https
    print(uri.host);   // example.com
    print(uri.path);   // /path
    print(uri.query);   // /query
    print(uri.port);   // /port
    print("-----------------------");
    if(response.statusCode == 200){
      Map<String, dynamic> data1 = jsonDecode(response.body);
      // if (!mounted) return;
      setState(() {
        data = data1; // 👈 update the state variable with the fetched data
      });
      print("Todos UserId: ${data1["userId"]}");
      print("Todos Id: ${data1["id"]}");
      print("Todos Title: ${data1["title"]}");
      print("Todos Completed: ${data1["completed"]}");
    }else{
      print("Error: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
                color: Colors.teal,
              ),

              width: double.infinity,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${data?["title"] ?? "Loading.."}"),
                  // Text(data != null ? "${data!["title"]}" : "Loading..."),
                  SizedBox(height: 25,),
                  ElevatedButton(onPressed: (){

                    getData();
                    // setState(() {
                    //   // getData();
                    // });
                    }, child: Text("Get Data"))
                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}
