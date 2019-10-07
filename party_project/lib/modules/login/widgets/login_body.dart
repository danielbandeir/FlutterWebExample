import 'package:flutter/material.dart';
import 'package:party_project/modules/dashboard/dashboard_page.dart';

class LoginBody extends StatefulWidget {
  
  final Size size;
  final String tag;

  @override
  _LoginBodyState createState() => _LoginBodyState();

  LoginBody({@required this.size, @required this.tag});
}

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              width: widget.size.width,
              height: widget.size.height * .4,
              child: Hero(
                tag: widget.tag,
                child: Image.asset(
                  "assets/images/party_background.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: widget.size.width,
              height: widget.size.height * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: const Radius.circular(100),
                      topRight: const Radius.circular(100))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      "Hi,",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w900,
                          fontSize: 72),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text("sign in to continue",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 32),),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: 550,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "E-mail",
                          hintStyle: TextStyle(color: Colors.black, fontSize: 32),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 550,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.black, fontSize: 32),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)
                          ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: widget.size.width*0.3,
                    height: widget.size.height*0.1,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
                      },
                      color: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                      child: Text("Enter",
                          style: TextStyle(color: Colors.white, fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      );
  }
}