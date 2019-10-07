import 'package:flutter/material.dart';

class HomeBackground extends StatelessWidget {
  final String tagBackground;

  HomeBackground({@required this.tagBackground});

  
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            height: double.infinity,
            child: Hero(
              tag: tagBackground,
              child: Image.asset(
                "assets/images/party_background.jpg",
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}