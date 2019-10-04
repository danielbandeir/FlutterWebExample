import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key }) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello',
              style: TextStyle(color: Color(0xff393e46), fontSize: 62, fontWeight: FontWeight.bold),
            ),
            Text(
              'World',
              style: TextStyle(color: Color(0xff00adb5), fontSize: 102, fontWeight: FontWeight.bold)
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showMessageDialog(context),
        child: Icon(Icons.sentiment_very_satisfied),
        backgroundColor: Colors.black,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future showMessageDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Créditos"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          ),
          content: Text("Feito por Daniel Bandeira"),
        );
      }
    );
  }
}
