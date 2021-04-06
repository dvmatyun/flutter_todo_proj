import 'package:fluttertodoproj/common/models/user_related/user_base.dart';

// ignore: one_member_abstracts
abstract class IUserRestClient{
  Future<UserBase> postLogin(String username, String password);
}