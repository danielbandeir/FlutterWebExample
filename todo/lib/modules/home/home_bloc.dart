import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todo/shared/models/task_model.dart';

class HomeBloc {
  StreamController<String> _task = StreamController();

  Stream<String> get task => _task.stream;

  Function(String) get onChangeTask => _task.sink.add;

  void save() async {
    String value = _task.stream.last.toString();
  }

  void dispose() {
    _task.close();
  }
}
