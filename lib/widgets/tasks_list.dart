import 'package:dailydo/Model/data.dart';
import 'package:dailydo/Model/data.dart';
import 'package:dailydo/widgets/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:dailydo/widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import '../Model/Task.dart';

class TasksList extends StatelessWidget  {
  List<Task> tasks;
  TasksList({required this.tasks});

  @override
  Widget build(BuildContext index) {
    return Consumer<Data>(
      builder: (context, Data, child){
        print("test ${Data.tasks.last.name}");
        return  ListView.builder(itemBuilder: (context, index) {
          final task = Data.tasks[index];
          return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkboxstate) {
                Data.updateTask(task);
              },
            longPressCallback: (){
                print('prabhat');
                Data.deleteTask(task);
            },
          );
        },
            itemCount: Data.tasksCount,
        );
      },
    );
  }
}
