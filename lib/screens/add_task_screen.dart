import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasks_list.dart';

import '../models/task.dart';

class AddTaskScreen extends StatelessWidget {
  late String taskName;
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children:  <Widget>[
              TextField(
                textAlign: TextAlign.center,
                onChanged: (value)=>
                {
                  taskName = value,
                },
                decoration: InputDecoration(
                  hintText: 'Add Task',
                  hintStyle: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 18.0,
                  ),
                  focusColor: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                  minimumSize: const Size.fromHeight(50),
                ),
                  onPressed: ()=>{
                    addTaskCallback(taskName),
                  },
                  child: Text('Add',style:
                    TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),))
            ],
          ),
        ),
      ),
    );
  }
}
