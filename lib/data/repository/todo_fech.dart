import 'package:todo_bloc/data/datasource/postremortdatasource.dart';
import 'package:todo_bloc/domain/entities/todo_entity.dart';
import 'package:todo_bloc/domain/repository/todo_repository.dart';

class TodoRepoImpl implements TodoRepo {
  TodoRemoteDatasource todoRemoteDatasource = TodoRemoteDataSourceImpl();
  @override
  Future<List<TodoEntity>> getTodoformDataSource() async {
    final todo = await todoRemoteDatasource.getTodoFromApi();
    return todo;
  }
}
