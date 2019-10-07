import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:party_project/modules/dashboard/widgets/dashboard_body.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DashboardBody(size: size),
    );
  }
}
