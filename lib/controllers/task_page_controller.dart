import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TaskController extends GetxController {
  var tasks = <Map<String, dynamic>>[].obs;

  void addTask(String task) {
    tasks.add({"title": task, "completed": false});
    showNotification("Task Added", "You have successfully added: $task");
  }

  void removeTask(int index) {
    String deletedTask = tasks[index]['title'];
    tasks.removeAt(index);
    showNotification("Task Deleted", "You removed: $deletedTask");
  }

  void toggleTaskCompletion(int index) {
    tasks[index]['completed'] = !tasks[index]['completed'];
    String status = tasks[index]['completed'] ? "completed" : "marked as pending";
    showNotification("Task Updated", "Task '${tasks[index]['title']}' is now $status");
    tasks.refresh();
  }

  void showNotification(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blueAccent,
      colorText: Colors.white,
    );
  }
}
