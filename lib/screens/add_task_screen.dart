import 'package:flutter/material.dart';
import 'package:flutter_demoooooos/models/task.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demoooooos/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
//  final Function addTaskCallback;
//
//  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent
            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTitle){
                newTaskTitle = newTitle;
              },
            ),
            FlatButton(
              child: Text("Add",
              style: TextStyle(
                color: Colors.white
              ),),
              color: Colors.lightBlueAccent,
              onPressed: (){
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
//                addTaskCallback(newTaskTitle);
              },
            )
          ],
        ),

      ),
    );
  }
}
