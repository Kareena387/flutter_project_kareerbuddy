import 'package:get/get.dart';


class TaskController extends GetxController {
  var tasks = <Map<String, dynamic>>[].obs;

  void addTask(String task) {
    tasks.add({"title": task, "completed": false});
  }

  void removeTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskCompletion(int index) {
    tasks[index]['completed'] = !tasks[index]['completed'];
    tasks.refresh();
  }
}
