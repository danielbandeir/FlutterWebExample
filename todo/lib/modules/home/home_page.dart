import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/home/home_bloc.dart';
import 'package:todo/home/home_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = Provider.of<HomeBloc>(context);
    return HomeProvider();
  }
}
