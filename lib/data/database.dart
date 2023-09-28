import 'package:hive_flutter/adapters.dart';

class ToDoDatabse {
  // list of todo tasks
  List toDoList = [];

  //reference the hive box
  final _myBox = Hive.box('myBox');

  //run this method if this is the 1st time user opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //update the data to the database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }

  //load or get the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }
}
