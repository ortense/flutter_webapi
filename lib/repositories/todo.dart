import 'dart:convert';

import 'package:flutter_webclient/http_client/http_client.dart';
import 'package:flutter_webclient/models/todo.dart';

var _baseUrl = 'https://jsonplaceholder.typicode.com';
var _timeoutDuration = Duration(seconds: 5);

Future<Todo> getTodoByID(int id) async {
  var url = '$_baseUrl/todos/$id';
  var response = await httpClient.get(url).timeout(_timeoutDuration);
  var jsonMap = json.decode(response.body);
  return Todo.fromMap(jsonMap);
}

Future<List<Todo>> getTodos() async {
  var url = '$_baseUrl/todos/';
  var response = await httpClient.get(url).timeout(_timeoutDuration);
  List<dynamic> jsonMap = json.decode(response.body);
  var todos = jsonMap.map((map) => Todo.fromMap(map)).toList();
  return todos;
}