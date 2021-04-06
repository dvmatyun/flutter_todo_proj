import 'package:fluttertodoproj/common/models/user_related/user_base.dart';

abstract class ILoginManager{

  //"true" event - user logged, "false" - logged out. May add Enum states:
  Stream<bool> get isUserLoggedStream;

  UserBase getLoggedUser();
  Future<UserBase> login(String username, String password);
  Future<void> logout();

  void close();
}