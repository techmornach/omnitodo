import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:todoapp/data/.database.dart';
import 'package:todoapp/util/dialog_box.dart';
import 'package:todoapp/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late TodoDatabase db;
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _setup();
  }

  Future<void> _setup() async {
    // var myBox = await Hive.openBox("mybox");
    // db = TodoDatabase();

    // if (myBox.get("TODOLIST") == null) {
    //   db.createInitialData();
    // } else {
    //   db.loadData();
    // }

    setState(() {}); // Rebuild the UI after loading data
  }

  List todoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
    // db.updateData();
  }

  void saveNewTask() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        todoList.add([_controller.text, false]);
        _controller.clear();
        // db.updateData();
        Navigator.of(context).pop();
      }
    });
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () => {Navigator.of(context).pop()},
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text("TO DO"),
          elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          shape: const CircleBorder(),
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) => TodoTile(
                  taskName: todoList[index][0],
                  taskCompleted: todoList[index][1],
                  onChanged: (value) => checkBoxChanged(value, index),
                  deleteFunction: (context) => deleteTask(index),
                )));
  }
}
