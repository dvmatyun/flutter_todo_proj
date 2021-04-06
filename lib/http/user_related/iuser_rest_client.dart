import 'package:fluttertodoproj/common/models/user_related/user_base.dart';

abstract class IUserRestClient{
  Future<UserBase> postLogin(String username, String password);
}