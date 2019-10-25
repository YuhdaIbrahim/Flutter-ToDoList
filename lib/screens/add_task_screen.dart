import 'package:flutter/material.dart';
import 'package:todo_flutterapps/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutterapps/models/task_data.dart';

String newTaskTitle;

// ignore: camel_case_types
class addTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      "Add Task",
                      style: TextStyle(
                          color: Colors.lightBlueAccent, fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (newText) {
                      newTaskTitle = newText;
                      print(newTaskTitle);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Material(
                      elevation: 5.0,
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10.0),
                      child: FlatButton(
                        onPressed: () {
                          Provider.of<TaskData>(context).addTask(newTaskTitle);
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Add",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
