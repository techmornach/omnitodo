import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  Box? myBox;

  Future<void> openBox() async {
    myBox = await Hive.openBox("mybox");
  }

  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false]
    ];
  }

  void loadData() {
    if (myBox != null) {
      todoList = myBox!.get("TODOLIST", defaultValue: []);
    }
  }

  void updateData() {
    if (myBox != null) {
      myBox!.put("TODOLIST", todoList);
    }
  }
}
