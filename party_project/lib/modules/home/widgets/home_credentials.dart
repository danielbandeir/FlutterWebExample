import 'package:flutter/material.dart';
import 'package:party_project/modules/login/login_page.dart';

class HomeCredentials extends StatelessWidget {

  final Size size;
  final String tagBackground;

  HomeCredentials({@required this.size, @required this.tagBackground});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}