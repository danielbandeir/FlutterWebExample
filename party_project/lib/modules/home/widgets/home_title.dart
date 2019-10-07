import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.only(top: 100, left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("life is more than words, is",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Roboto')),
                Text(
                  "PARTY",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 102,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
    );
  }
}