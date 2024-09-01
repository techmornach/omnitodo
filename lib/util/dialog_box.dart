import "package:flutter/material.dart";
import "package:todoapp/util/my_button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      shape: ContinuousRectangleBorder(),
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(text: "Save", onPressed: () {}),
                const SizedBox(width: 8),
                MyButton(text: "Cancel", onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
