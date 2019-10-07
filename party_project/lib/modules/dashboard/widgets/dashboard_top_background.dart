import 'package:flutter/material.dart';

class DashboardTopBackground extends StatelessWidget {
  final Size size;

  DashboardTopBackground({@required this.size});
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: size.height * .4,
              child: Image.asset(
                "assets/images/party_background.jpg",
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}