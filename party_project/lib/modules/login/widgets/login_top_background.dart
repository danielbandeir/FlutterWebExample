import 'package:flutter/material.dart';

class LoginTopBackground extends StatelessWidget {
  final Size size;
  final String tag;

  LoginTopBackground({@required this.size, @required this.tag});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: size.height * .4,
              child: Hero(
                tag: tag,
                child: Image.asset(
                  "assets/images/party_background.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
    );
  }
}