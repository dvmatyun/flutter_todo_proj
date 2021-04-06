
///Exception on user login
class LoginException implements Exception {
  ///cause of exception
  String cause;
  ///default constr
  LoginException(this.cause);
}