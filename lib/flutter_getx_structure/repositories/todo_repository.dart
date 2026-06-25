import '../models/todo_model.dart';
import '../services/api_service.dart';

class TodoRepository {
  final ApiService apiService;

  TodoRepository(this.apiService);

  Future<List<TodoModel>> getTodos() async {
    final data = await apiService.fetchTodos();

    return data
        .map<TodoModel>(
          (json) => TodoModel.fromJson(json),
    )
        .toList();
  }
}