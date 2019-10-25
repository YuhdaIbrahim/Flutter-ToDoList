import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_flutterapps/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutterapps/models/task_data.dart';

class taskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return itemTask(
              tasktitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool newValue) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
