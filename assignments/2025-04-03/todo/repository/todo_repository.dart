import '../model/todo.dart';

abstract interface class TodoRepository {
  Future<List<Todo>> fetchTodos();
  Future<Todo> fetchTodo(int id);

  Future<List<Todo>> getTodos();
  Future<void> addTodo(String title);
  Future<void> updateTodo(int id, String newTitle);
  Future<void> toggleTodo(int id);
  Future<void> deleteTodo(int id);
  Future<List<Todo>> selectedWithCompletedTodo(bool completed);
}
