import 'package:flutter/material.dart';
import 'package:party_project/modules/dashboard/widgets/dashboard_avatar_profile.dart';
import 'package:party_project/modules/dashboard/widgets/dashboard_list_images.dart';
import 'package:party_project/modules/dashboard/widgets/dashboard_top_background.dart';
import 'package:party_project/modules/dashboard/widgets/dashboard_welcome_profile.dart';

class DashboardBody extends StatelessWidget {
  final Size size;

  DashboardBody({@required this.size});
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          DashboardTopBackground(size: size),
          Positioned(
            bottom: 0,
            child: Container(
              width: size.width,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(100),
                      topRight: const Radius.circular(100))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DashboardWelcomeProfile(),
                  SizedBox(
                    height: 50,
                  ),
                  DashboardListImages(),
                ],
              ),
            ),
          ),
          DashboardAvatarProfile(size: size)
        ],
      );
  }
}