import 'package:flutter/material.dart';
import 'package:practice_dart_ui/api_basic_understaning/api_intrigation_flow/screen/todo_screen.dart';
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