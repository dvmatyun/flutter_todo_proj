import 'package:fluttertodoproj/common/models/user_related/user.dart';
import 'package:fluttertodoproj/common/models/user_related/user_base.dart';
import 'package:fluttertodoproj/http/user_related/iuser_rest_client.dart';

class FakeUserRestClient implements IUserRestClient {

  Future<UserBase> postLogin(String username, String password) async {
    await Future.delayed(Duration(milliseconds: 200));

    //simulating server response on wrong creditnails:
    if (username.length < 4 || password.length < 6){
      throw Exception("Http unknown error");
    }
    return User(username: username, password: '', firstName: 'Коля', lastName: 'Колоков');
  }

}