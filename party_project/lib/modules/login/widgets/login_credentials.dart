import 'package:flutter/material.dart';
import 'package:party_project/modules/dashboard/dashboard_page.dart';

class LoginCredentials extends StatelessWidget {
  final Size size;

  LoginCredentials({@required this.size});
  
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    width: size.width*0.3,
                    height: size.height*0.1,
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
    );
  }
}