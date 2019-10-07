import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:party_project/modules/login/widgets/login_body.dart';

class LoginPage extends StatefulWidget {
  final String tag;

  @override
  _LoginPageState createState() => _LoginPageState();

  LoginPage({@required this.tag});
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBody(size: size, tag: widget.tag),
    );
  }
}
