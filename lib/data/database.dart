import 'package:hive/hive.dart';

class ToDoDatabase {
  List toDoList = [];
  final _mybox = Hive.box('mybox');

  // data for running the app for first time
  void createInitialData() {
    toDoList = [
      ["task", false],
    ];
  }

  // load data from local database
  void localDatabase() {
    toDoList = _mybox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
