import 'package:flutter/material.dart';

class itemTask extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  itemTask(
      {this.isChecked,
      this.tasktitle,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

//void
