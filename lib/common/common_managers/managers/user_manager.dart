import 'dart:async';

import 'package:fluttertodoproj/common/common_managers/interfaces/ilogin_manager.dart';
import 'package:fluttertodoproj/common/models/user_related/exception_login.dart';
import 'package:fluttertodoproj/common/models/user_related/user_base.dart';
import 'package:fluttertodoproj/http/user_related/iuser_rest_client.dart';

class UserManager implements ILoginManager{

  final IUserRestClient userRestClient;

  UserManager(this.userRestClient);

  UserBase? _lastuser;

  Future<UserBase> login(String username, String password) async {
    try {
      var user = await userRestClient.postLogin(username, password);
      _lastuser = user;
      _loginSc.add(true);
      return getLoggedUser();
    } catch (e){
      //could be different reasons (may develop further):
      throw LoginException("Login failed");
    }
  }

  @override
  UserBase getLoggedUser(){
    if (_lastuser == null){
      throw Exception("Noone has logged yet!");
    }
    return _lastuser!;
  }

  @override
  Future<void> logout() {
    _loginSc.add(false);
    _lastuser = null;
    return Future.delayed(Duration.zero);
  }

  final _loginSc = StreamController<bool>.broadcast();

  @override
  Stream<bool> get isUserLoggedStream => _loginSc.stream;

  void close(){
    _loginSc.close();
  }

}