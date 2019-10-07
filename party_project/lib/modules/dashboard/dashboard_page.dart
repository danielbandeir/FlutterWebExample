import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:party_project/shared/models/person_model.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  @override
  void initState() {
    super.initState();
}

  Future<List<PersonModel>> createPerson() async {
    List<PersonModel> person = new List<PersonModel>() ;

    person.add(PersonModel(name: "Paul Gilmore", picture: "assets/images/paul-gilmore.jpg"));
    person.add(PersonModel(name: "Peter Lloyd", picture: "assets/images/peter-lloyd.jpg"));
    person.add(PersonModel(name: "Natalya Zaritskyaya", picture: "assets/images/natalya-zaritskaya.jpg"));
    person.add(PersonModel(name: "Alan Hurt Jr.", picture: "assets/images/alan-hurt-jr.jpg"));
    person.add(PersonModel(name: "Morgan Sessions", picture: "assets/images/morgan-sessions.jpg"));
    return person ;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              width: size.width,
              height: size.height * .4,
              child: Image.asset(
                "assets/images/party_background.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 180),
                            child: Text(
                              "Hello,",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 22),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text("Cerys Lowe",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32),),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  FutureBuilder(
                    future: this.createPerson(),
                    builder: (context, snapshot) {
                      if(snapshot.hasData) {
                        return Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.only(left: 120),
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              PersonModel person = snapshot.data[index];
                              return Padding(
                                padding: EdgeInsets.only(left: 150),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 250,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(person.picture)
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(person.name,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 22),),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      } else{
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
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
          )
        ],
      ),
    );
  }
}
