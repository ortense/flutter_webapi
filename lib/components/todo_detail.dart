import 'package:flutter/material.dart';
import 'package:flutter_webclient/models/todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;

  TodoDetail(this.todo);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text('${todo.completed ? '✅' : '⚪️'}  #${todo.id} ${todo.title}'),
        ));
  }
}
