import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool taskCompleted;
  final String taskName;
  Function(bool?)? onChanged;

  TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(children: [
          Checkbox(value: taskCompleted, onChanged: onChanged),
          Text(taskName)
        ]),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
