import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todo/shared/models/task_model.dart';
import 'package:todo/shared/repository/task_repository.dart';

class HomeBloc {
  final TaskRepository taskRepository;

  String _taskNameValue;
  String _taskDescriptionValue;

  StreamController<TaskModel> _task = StreamController<TaskModel>();
  StreamController<String> _taskName = StreamController<String>();
  StreamController<String> _taskDescription = StreamController<String>();

  // Stream for stream builder
  Stream<TaskModel> get task => _task.stream.where((data) => data != null);
  Stream<String> get taskName => _taskName.stream.where((data) => data != null);
  Stream<String> get taskDescription => _taskDescription.stream.where((data) => data != null);

  // When change the Widget task name, add in the stream
  Function(String) get onChangeTaskName => _taskName.sink.add;
  Function(TaskModel) get onChangeTask => _task.sink.add;
  Function(String) get onChangeTaskDescription => _taskDescription.sink.add;

  // Initialize listen when data entrance put in _taskNameValue
  HomeBloc({@required this.taskRepository}) {
    taskName.listen((data) => _taskNameValue = data);
    taskDescription.listen((data) => _taskDescriptionValue = data);
  }

  // Catch values from taskName and description to save in local storage
  void save() async {
    await onChangeTask(TaskModel(description: _taskDescriptionValue, title: _taskNameValue));
  }

  // Dispose stream when out of screen
  void dispose() {
    _task.close();
    _taskName.close();
    _taskDescription.close();
  }
}
