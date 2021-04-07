

import 'package:fluttertodoproj/common/models/user_related/user_base.dart';

///interface for login manager
abstract class ILoginManager{

  ///"true" event - user logged, "false" - logged out. May add Enum states:
  Stream<bool> get isUserLoggedStream;

  ///getLoggedUser
  UserBase getLoggedUser();
  ///login
  Future<UserBase> login(String username, String password);
  ///logout
  Future<void> logout();
  ///close
  void close();
}