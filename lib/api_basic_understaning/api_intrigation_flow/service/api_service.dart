import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practice_dart_ui/api_basic_understaning/api_intrigation_flow/model/todo_model.dart';
class ApiService {


  // void getData() async{
  Future<List<TodoModel>>  getData() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos/"));

    if(response.statusCode == 200){
      // var data = response.body;
      // String data = response.body;
      String data = response.body;
      print("Data body runtimeType: ------------------- ${data.runtimeType}");
      // print(data[name]); rong
      // Map<String, dynamic>
// {
//   "userId": 1,
//   "id": 10,
//   "title": "Learn Flutter",
//   "completed": false
// }
//
// jsonDecode() ke baad Dart me:
      // Map<String, dynamic> json = {
      //   "userId": 1,
      //   "id": 10,
      //   "title": "Learn Flutter",
      //   "completed": false
      // };
      List<dynamic> jsonDt = jsonDecode(data); // abhi bhi map hai
      // print(jsonDt["name"]);
      // List<dynamic> jsonD = jsonEncode(data); // abhi bhi map hai
      print("Data body: ------------------- ${data}");
      print("JsonDecode Data runtimetype: ----------------${jsonDt.runtimeType}");

      // jsonDecode() ek JSON object return kar raha hai, jo is API ke case me:
      // Dart khud type infer kar leta hai.(var)
      // TodoModel todo = TodoModel.fromJson(jsonDt);

      // setState(() {
      //   // todoList = TodoModel.fromJson(jsonDt);
      //   todoList = jsonDt
      //       .map((e) => TodoModel.fromJson(e))
      //       .toList();
      // });

      // understaning
      // TodoModel todo = TodoModel.fromJson(data);
      // Result:
      // todo.userId    // 1
      // todo.id        // 1
      // todo.title     // Hello
      // todo.completed // false



      List<TodoModel> todoList = jsonDt.map((e) => TodoModel.fromJson(e)).toList();
// Har Map ko TodoModel bana do
//
// Jaise:
//
// [
//  {"title":"A"},
//  {"title":"B"},
//  {"title":"C"}
// ]
      return todoList;


      print("Hello Words ${jsonDt[0]["title"]}---- -");
    }else{

      print("error-------------------------------");
      throw Exception("Failed to load data");

    }
  }


  // Future<UserModel> getUser() async {
  //   final response = await http.get(
  //     Uri.parse('https://api.example.com/user'),
  //   );
  //
  //   return UserModel.fromJson(
  //     jsonDecode(response.body),
  //   );
  // }




}