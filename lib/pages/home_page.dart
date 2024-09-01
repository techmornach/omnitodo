import 'package:flutter/material.dart';
import 'package:todoapp/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List todoList = [
    ["Make Tutorial", false],
    ["Do Excersice", false]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("TO DO"),
          elevation: 0,
        ),
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) => TodoTile(
                taskName: todoList[index][0],
                taskCompleted: todoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index))));
  }
}
