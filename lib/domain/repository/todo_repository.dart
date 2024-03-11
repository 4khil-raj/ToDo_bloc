import 'dart:convert';

import 'package:todo_bloc/domain/entities/todo_entity.dart';
import 'package:http/http.dart' as http;

abstract class TodoRepo {
  Future<List<TodoEntity>> getTodoformDataSource();
}
