import 'package:bloc/bloc.dart';
import 'package:fluttertodoproj/common/common_managers/interfaces/ilogin_manager.dart';
import 'package:fluttertodoproj/common/models/user_related/exception_login.dart';
import 'package:fluttertodoproj/common/models/user_related/user_base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';

@freezed
class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.login(String username, String password) = LoginEvent;
  const factory LoginBlocEvent.logout() = LogoutEvent;
}

@freezed
class LoginBlocState with _$LoginBlocState {
  const factory LoginBlocState.notLogged() = NotLoggedState;
  const factory LoginBlocState.logged(UserBase user) = LoggedState;
  const factory LoginBlocState.loginFailed(String cause) = LoginFailedState;

  const factory LoginBlocState.loading() = LoadingState;
}


class LoginBLoC extends Bloc<LoginBlocEvent, LoginBlocState> {

  final ILoginManager _loginManager;

  LoginBLoC(this._loginManager) : super(const NotLoggedState());

  @override
  Stream<LoginBlocState> mapEventToState(LoginBlocEvent event) =>
    event.when<Stream<LoginBlocState>>(
      login: _login,
      logout: _logout,
    );

  Stream<LoginBlocState> _login(String username, String password) async*{
    yield LoadingState();
    try{
      var user = await _loginManager.login(username, password);
      yield LoggedState(user);
    } on LoginException catch(e){
      yield LoginFailedState(e.cause);
    }
  }

  Stream<LoginBlocState> _logout() async*{
    yield LoadingState();
    await _loginManager.logout();
    yield NotLoggedState();
  }

}