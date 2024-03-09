import 'dart:convert';

import 'package:todo_bloc/data/models/todofech_model.dart';
import 'package:http/http.dart' as http;

abstract class TodoRemoteDatasource {
  Future<List<TodoModel>> getTodoFromApi();
}

class TodoRemoteDataSourceImpl implements TodoRemoteDatasource {
  final client = http.Client();
  @override
  Future<List<TodoModel>> getTodoFromApi() async {
    try {
      final response = await client.get(
        Uri.parse('https://api.nstack.in/v1/todos?page=1&limit=10'),
        // headers: {'content-type': 'application/json'}
      );

      if (response.statusCode == 200) {
        final List<dynamic> responseBody = jsonDecode(response.body);
        final List<TodoModel> todofech =
            responseBody.map((json) => TodoModel.fromJosn(json)).toList();
        return todofech;
      } else {
        throw Exception('Failed to Load');
      }
    } catch (e) {
      print('$e');
      throw Exception('$e');
    }
  }
}
