import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:party_project/modules/login/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/party_background.jpg",
              fit: BoxFit.cover,
            ),
          ),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (context) => LoginPage()));
                },
                child: Container(
                  width: double.infinity/4,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text("Sign in"),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ],
      ),
    );
  }
}
