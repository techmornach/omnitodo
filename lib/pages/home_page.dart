import 'package:flutter/material.dart';
import 'package:todoapp/util/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("TO DO"),
          elevation: 0,
        ),
        body: ListView(
          children: [
            TodoTile(
              taskName: "Make tutotial",
              taskCompleted: true,
              onChanged: (p0) {},
            ),
            TodoTile(
              taskName: "Do Excercise",
              taskCompleted: false,
              onChanged: (p0) {},
            ),
          ],
        ));
  }
}
