import 'package:flutter/material.dart';

class HomeBackgroundOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
            opacity: 0.5,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
            ),
    );
  }
}