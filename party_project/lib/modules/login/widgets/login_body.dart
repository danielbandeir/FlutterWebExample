import 'package:flutter/material.dart';
import 'package:party_project/modules/login/widgets/login_bottom_background.dart';
import 'package:party_project/modules/login/widgets/login_top_background.dart';

class LoginBody extends StatefulWidget {
  
  final Size size;
  final String tag;

  @override
  _LoginBodyState createState() => _LoginBodyState();

  LoginBody({@required this.size, @required this.tag});
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          LoginTopBackground(size: widget.size, tag: widget.tag),
          LoginBottomBackground(size: widget.size)
        ],
      );
  }
}