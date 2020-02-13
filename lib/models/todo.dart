class Todo {
  int id;
  int userId;
  String title;
  bool completed;

  Todo({this.userId, this.id, this.title, this.completed});

  Todo.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    userId = map['userId'];
    title = map['title'];
    completed = map['completed'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userId'] = this.userId;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }

  @override
  String toString() {
    return 'Todo{id: $id, userId: $userId, title: $title, completed: $completed }';
  }
}