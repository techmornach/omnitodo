import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];
  final myBox = Hive.openBox("mybox");
  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Excersice", false]
    ];
  }

  void loadData() {}
  void updateData() {}
}
