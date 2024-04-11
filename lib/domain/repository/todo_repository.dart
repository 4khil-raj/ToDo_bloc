import 'package:todo_bloc/domain/entities/todo_entity.dart';

abstract class TodoRepo {
  Future<List<TodoEntity>> getTodoformDataSource();
}
