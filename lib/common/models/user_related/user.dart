import 'package:fluttertodoproj/common/models/user_related/user_base.dart';

class User implements UserBase {
  String username;
  String password;
  String firstName;
  String lastName;
  String patronic;

  User({required this.username, this.password = '', this.firstName = '', this.lastName = '', this.patronic = ''});

  String getFio(){
    return '$lastName $firstName $patronic';
  }
}