import 'package:flutter/material.dart';
import 'package:flutter_webclient/components/todo_list.dart';
import 'package:flutter_webclient/models/todo.dart';
import 'package:flutter_webclient/repositories/todo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<List<Todo>>(
      future: getTodos(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SafeArea(child: TodoList(snapshot.data));
        }

        if (snapshot.hasError) {
          debugPrint(snapshot.error);
          return Text('Error! ${snapshot.error.toString()}');
        }

        return Center(child: CircularProgressIndicator());
      },
    ));
  }
}
