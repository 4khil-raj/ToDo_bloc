import 'package:todo_bloc/data/repository/todo_fech.dart';
import 'package:todo_bloc/domain/entities/todo_entity.dart';
import 'package:todo_bloc/domain/repository/todo_repository.dart';

class TodoUseCases {
  TodoRepo todoRepo = TodoRepoImpl();
  Future<List<TodoEntity>> getTodoFromDataSource() async {
    print('njn ivite ethi');
    final todo = await todoRepo.getTodoformDataSource();
    print('dsfsf');
    print(todo);
    return todo;
  }
}
