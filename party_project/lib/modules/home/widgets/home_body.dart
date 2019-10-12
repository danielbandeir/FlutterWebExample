import 'package:flutter/material.dart';
import 'package:party_project/modules/home/widgets/home_background.dart';
import 'package:party_project/modules/home/widgets/home_background_opacity.dart';
import 'package:party_project/modules/home/widgets/home_credentials.dart';
import 'package:party_project/modules/home/widgets/home_title.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  String tagBackground = "background";
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Stack(
        children: <Widget>[
          HomeBackground(tagBackground: this.tagBackground),
          HomeBackgroundOpacity(),
          HomeTitle(),
          HomeCredentials(size: size, tagBackground: this.tagBackground),
        ],
      );
  }
}