import 'package:flutter/material.dart';
import 'package:flutter_webclient/models/todo.dart';

import 'list_title.dart';
import 'todo_detail.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  TodoList(this.todos);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          index == 0 ? ListTitle('todo list') : TodoDetail(todos[index - 1]),
      itemCount: todos.length + 1,
    );
  }
}