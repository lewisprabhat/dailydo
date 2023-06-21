import 'package:flutter/foundation.dart';
import 'package:dailydo/Model/Task.dart';
import 'dart:collection';

class Data extends ChangeNotifier{

  final List<Task> _tasks = [
    Task(name: 'Buy milk',isDone: false),
    Task(name: 'Buy egg',isDone: false),

  ];

  List<Task> get tasks{
    return _tasks;
  }

int get tasksCount{
  return _tasks.length;

}
void addtask(String textenteredbyuser){
  final task = Task(name: textenteredbyuser,isDone: false);
  _tasks.add(task);
  notifyListeners();
  print("add task ${task.name}");

}

void updateTask(Task task){
    task.toogleDone();
    notifyListeners();

}

void deleteTask (Task task){
    _tasks.remove(task);
    notifyListeners();
}

}