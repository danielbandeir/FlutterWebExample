import 'package:flutter/material.dart';
import 'package:party_project/modules/login/widgets/login_credentials.dart';

class LoginBottomBackground extends StatelessWidget {
  final Size size;

  LoginBottomBackground({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(100),
                      topRight: const Radius.circular(100))),
              child: LoginCredentials(size: size),
            ),
          );
  }
}