import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kareerbuddy/controllers/task_page_controller.dart';
import 'task_list_page.dart';

class TaskInputPage extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(labelText: "Enter Task"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (textController.text.isNotEmpty) {
                  taskController.addTask(textController.text);
                  textController.clear();
                }
              },
              child: Text("Add Task"),
            ),
            SizedBox(height: 20), // Adds space between buttons
            ElevatedButton(
              onPressed: () => Get.to(TaskListPage()),
              child: Text("View Tasks"),
            ),
          ],
        ),
      ),
    );
  }
}
