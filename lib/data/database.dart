import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];
  final myBox = Hive.openBox("mybox");
}
