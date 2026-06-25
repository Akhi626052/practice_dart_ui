import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/todo_controller.dart';
import 'repositories/todo_repository.dart';
import 'services/api_service.dart';
import 'views/todo_page.dart';

void main() {

  final apiService = ApiService();

  final repository = TodoRepository(apiService);

  Get.put(
    TodoController(repository),
  );

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TodoPage(),
    );
  }
}