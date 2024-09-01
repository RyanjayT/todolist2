import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box("My Box");

  // run if firt time ever open
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //load the data from database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
