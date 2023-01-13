import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context,taskData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState){
               taskData.updateTask(task);
              },
              longPressCallback: ()=> taskData.deleteTask(task),
            );
          },
          itemCount: taskData.taskCount,
        );
      }

    );
  }
}

