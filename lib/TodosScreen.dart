import 'package:flutter/material.dart';
import 'DetailScreen.dart';
import 'todo.dart';
class TodosScreen extends StatelessWidget {
  // Requiring the list of todos.
  const TodosScreen({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(todos[index].title),
                // When a user taps the ListTile, navigate to the DetailScreen.
                // Notice that you're not only creating a DetailScreen, you're
                // also passing the current todo through to it.
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(todo: todos[index]),
                    ),
                  );
                },
              );
            },
          ),
    );
  }
}