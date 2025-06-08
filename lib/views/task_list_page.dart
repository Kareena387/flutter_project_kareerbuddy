import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kareerbuddy/controllers/task_page_controller.dart';

class TaskListPage extends StatelessWidget {
  final TaskController taskController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task List")),
      body: Obx(() => ListView.builder(
        itemCount: taskController.tasks.length,
        itemBuilder: (context, index) {
          var task = taskController.tasks[index];
          return ListTile(
            title: Text(
              task["title"],
              style: TextStyle(
                  decoration: task["completed"]
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
            leading: Checkbox(
              value: task["completed"],
              onChanged: (_) => taskController.toggleTaskCompletion(index),
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => taskController.removeTask(index),
            ),
          );
        },
      )),
    );
  }
}
