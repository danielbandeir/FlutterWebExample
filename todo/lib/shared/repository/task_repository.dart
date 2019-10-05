import 'package:todo/shared/models/task_model.dart';

abstract class TaskRepository {
  Future<TaskModel> getTasks();
  Future<bool> addTask(TaskModel task);
  Future<bool> removeTask(TaskModel task);
}