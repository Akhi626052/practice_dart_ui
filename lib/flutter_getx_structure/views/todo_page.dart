import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/todo_controller.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TodoController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: Obx(
            () {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
            itemCount: controller.todoList.length,
            itemBuilder: (context, index) {
              final todo =
              controller.todoList[index];

              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    todo.id.toString(),
                  ),
                ),
                title: Text(todo.title),
                subtitle: Text(
                  "Completed : ${todo.completed}",
                ),
              );
            },
          );
        },
      ),
    );
  }
}