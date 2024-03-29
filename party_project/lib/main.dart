import 'package:flutter/material.dart';
import 'package:party_project/modules/dashboard/dashboard_page.dart';
import 'package:party_project/modules/home/home_page.dart';
import 'package:party_project/modules/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '.Party',
      home: HomePage(),
    );
  }
}
