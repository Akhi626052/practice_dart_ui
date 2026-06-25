import 'package:get/get.dart';

import '../models/todo_model.dart';
import '../repositories/todo_repository.dart';

class TodoController extends GetxController {
  final TodoRepository repository;

  TodoController(this.repository);

  var isLoading = true.obs;

  var todoList = <TodoModel>[].obs;

  @override
  void onInit() {
    fetchTodos();
    super.onInit();
  }

  Future<void> fetchTodos() async {
    try {
      isLoading.value = true;

      final data = await repository.getTodos();

      todoList.assignAll(data);
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
      );
    } finally {
      isLoading.value = false;
    }
  }
}