import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
 TasksList(this.tasks);
  final List<Task> tasks;


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback: (checkboxState){
              setState(() {
                widget.tasks[index].isDone= checkboxState;
              });
            },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

