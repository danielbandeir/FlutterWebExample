import 'package:flutter/material.dart';
import 'package:todo/modules/home/home_bloc.dart';
import 'package:todo/modules/home/home_page.dart';
import 'package:todo/shared/repository/Impl/task_repository_impl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To do list',
      home: HomePage(bloc: HomeBloc(
        taskRepository: TaskRepositoryImpl()
      )),
    );
  }
}