import 'package:flutter/material.dart';
import 'package:todo/modules/home/home_bloc.dart';

class HomePage extends StatefulWidget {
  final HomeBloc bloc;
  @override
  _HomePageState createState() => _HomePageState();

  HomePage({@required this.bloc});

}

class _HomePageState extends State<HomePage> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () => addTask(context),
        backgroundColor: Colors.black,
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: StreamBuilder<String>(
        stream: widget.bloc.task,
        builder: (context, snapshot) {
          return snapshot.hasData ? Text(snapshot.data) : Text("Empty, sorry =/");
        },
      ),
    );
  }

  Future<Widget> addTask(context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Adicionar task"),
            content: TextField(
              onChanged: widget.bloc.onChangeTask,
            ),
            actions: <Widget>[
              RaisedButton(
                onPressed: widget.bloc.save,
              )
            ],
          );
        });
  }
}
