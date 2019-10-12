import 'package:party_project/shared/models/person_model.dart';

class DashboardBloc {


  Future<List<PersonModel>> createPerson() async {
    List<PersonModel> person = new List<PersonModel>() ;

    person.add(PersonModel(name: "Paul Gilmore", picture: "assets/images/paul-gilmore.jpg"));
    person.add(PersonModel(name: "Peter Lloyd", picture: "assets/images/peter-lloyd.jpg"));
    person.add(PersonModel(name: "Natalya Zaritskyaya", picture: "assets/images/natalya-zaritskaya.jpg"));
    person.add(PersonModel(name: "Alan Hurt Jr.", picture: "assets/images/alan-hurt-jr.jpg"));
    person.add(PersonModel(name: "Morgan Sessions", picture: "assets/images/morgan-sessions.jpg"));
    return person ;
  }
  
}