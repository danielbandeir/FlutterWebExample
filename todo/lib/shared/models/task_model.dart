import 'package:flutter/material.dart';

class TaskModel {
  String title;
  String description;
  DateTime date;

  TaskModel({@required this.title, @required this.description, @required this.date});
}