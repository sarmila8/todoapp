import 'package:flutter/foundation.dart';
import 'package:todoapp/models/task.dart';
import 'dart:collection';

class Taskdata extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy chocolate'),
    Task(name: 'buy noodles'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskcount {
    return _tasks.length;
  }

  void addtask(String newtasktitle) {
    tasks.add(Task(name: 'khhh'));
    final task = Task(name: newtasktitle);
    _tasks.add(task);
    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  void updatetask(Task, task) {
    task.toggledone();
    notifyListeners();
  }

  void deletetask(Task, task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
