import 'package:flutter/material.dart';

class DashboardAvatarProfile extends StatelessWidget {

  final Size size;

  DashboardAvatarProfile({@required this.size});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: size.height*.1,
            left: size.width*.5-125,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/cerys-lowe.jpg',
                  )
                ),
                shape: BoxShape.circle
              ),
            ),
          );
  }
}