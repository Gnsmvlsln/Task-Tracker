import 'package:flutter/material.dart';
import 'task_tile.dart';
//import 'package:flutter_demoooooos/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demoooooos/models/task_data.dart';

class TaskList extends StatelessWidget {

//  final List<Task> tasks;
//
//  TaskList(this.tasks);


//  @override
//  _TaskListState createState() => _TaskListState();
//}
//
//class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState){
              taskData.updateTask(task);
//          setState(() {
//            widget.tasks[index].toggleDone();
//          });
            },
              longPressCallback:(){
                taskData.deleteTask(task);
              }
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}