import 'package:flutter/material.dart';
import 'package:party_project/modules/home/widgets/home_background.dart';
import 'package:party_project/modules/login/login_page.dart';

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
          Opacity(
            opacity: 0.5,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
            ),
          ),
          Padding(
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: size.width*0.3,
                    height: size.height*0.1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(tag: tagBackground)));
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                      child: Text("Sign in",
                          style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: size.width*0.3,
                    height: size.height*0.1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(tag: tagBackground)));
                      },
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: BorderSide(color: Colors.white)),

                      child: Text("Sign up",
                          style: TextStyle(color: Colors.white, fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 45,
              )
            ],
          ),
        ],
      );
  }
}