import 'package:flutter/material.dart';
import 'package:party_project/modules/dashboard/dashboard_bloc.dart';
import 'package:party_project/shared/models/person_model.dart';

class DashboardListImages extends StatefulWidget {
  @override
  _DashboardListImagesState createState() => _DashboardListImagesState();
}

class _DashboardListImagesState extends State<DashboardListImages> {
  DashboardBloc dashboardBloc = DashboardBloc();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
                    future: dashboardBloc.createPerson(),
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
                  );
  }
}