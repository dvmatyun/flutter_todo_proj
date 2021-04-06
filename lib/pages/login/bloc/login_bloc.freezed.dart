// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginBlocEventTearOff {
  const _$LoginBlocEventTearOff();

  LoginEvent login(String username, String password) {
    return LoginEvent(
      username,
      password,
    );
  }

  LogoutEvent logout() {
    return const LogoutEvent();
  }
}

/// @nodoc
const $LoginBlocEvent = _$LoginBlocEventTearOff();

/// @nodoc
mixin _$LoginBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocEventCopyWith<$Res> {
  factory $LoginBlocEventCopyWith(
          LoginBlocEvent value, $Res Function(LoginBlocEvent) then) =
      _$LoginBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginBlocEventCopyWithImpl<$Res>
    implements $LoginBlocEventCopyWith<$Res> {
  _$LoginBlocEventCopyWithImpl(this._value, this._then);

  final LoginBlocEvent _value;
  // ignore: unused_field
  final $Res Function(LoginBlocEvent) _then;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> extends _$LoginBlocEventCopyWithImpl<$Res>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(LoginEvent _value, $Res Function(LoginEvent) _then)
      : super(_value, (v) => _then(v as LoginEvent));

  @override
  LoginEvent get _value => super._value as LoginEvent;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(LoginEvent(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$LoginEvent implements LoginEvent {
  const _$LoginEvent(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginBlocEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEvent &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      _$LoginEventCopyWithImpl<LoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() logout,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements LoginBlocEvent {
  const factory LoginEvent(String username, String password) = _$LoginEvent;

  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutEventCopyWith<$Res> {
  factory $LogoutEventCopyWith(
          LogoutEvent value, $Res Function(LogoutEvent) then) =
      _$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogoutEventCopyWithImpl<$Res> extends _$LoginBlocEventCopyWithImpl<$Res>
    implements $LogoutEventCopyWith<$Res> {
  _$LogoutEventCopyWithImpl(
      LogoutEvent _value, $Res Function(LogoutEvent) _then)
      : super(_value, (v) => _then(v as LogoutEvent));

  @override
  LogoutEvent get _value => super._value as LogoutEvent;
}

/// @nodoc
class _$LogoutEvent implements LogoutEvent {
  const _$LogoutEvent();

  @override
  String toString() {
    return 'LoginBlocEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements LoginBlocEvent {
  const factory LogoutEvent() = _$LogoutEvent;
}

/// @nodoc
class _$LoginBlocStateTearOff {
  const _$LoginBlocStateTearOff();

  NotLoggedState notLogged() {
    return const NotLoggedState();
  }

  LoggedState logged(UserBase user) {
    return LoggedState(
      user,
    );
  }

  LoginFailedState loginFailed(String cause) {
    return LoginFailedState(
      cause,
    );
  }

  LoadingState loading() {
    return const LoadingState();
  }
}

/// @nodoc
const $LoginBlocState = _$LoginBlocStateTearOff();

/// @nodoc
mixin _$LoginBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLogged,
    required TResult Function(UserBase user) logged,
    required TResult Function(String cause) loginFailed,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLogged,
    TResult Function(UserBase user)? logged,
    TResult Function(String cause)? loginFailed,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotLoggedState value) notLogged,
    required TResult Function(LoggedState value) logged,
    required TResult Function(LoginFailedState value) loginFailed,
    required TResult Function(LoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotLoggedState value)? notLogged,
    TResult Function(LoggedState value)? logged,
    TResult Function(LoginFailedState value)? loginFailed,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocStateCopyWith<$Res> {
  factory $LoginBlocStateCopyWith(
          LoginBlocState value, $Res Function(LoginBlocState) then) =
      _$LoginBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginBlocStateCopyWithImpl<$Res>
    implements $LoginBlocStateCopyWith<$Res> {
  _$LoginBlocStateCopyWithImpl(this._value, this._then);

  final LoginBlocState _value;
  // ignore: unused_field
  final $Res Function(LoginBlocState) _then;
}

/// @nodoc
abstract class $NotLoggedStateCopyWith<$Res> {
  factory $NotLoggedStateCopyWith(
          NotLoggedState value, $Res Function(NotLoggedState) then) =
      _$NotLoggedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoggedStateCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res>
    implements $NotLoggedStateCopyWith<$Res> {
  _$NotLoggedStateCopyWithImpl(
      NotLoggedState _value, $Res Function(NotLoggedState) _then)
      : super(_value, (v) => _then(v as NotLoggedState));

  @override
  NotLoggedState get _value => super._value as NotLoggedState;
}

/// @nodoc
class _$NotLoggedState implements NotLoggedState {
  const _$NotLoggedState();

  @override
  String toString() {
    return 'LoginBlocState.notLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLoggedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLogged,
    required TResult Function(UserBase user) logged,
    required TResult Function(String cause) loginFailed,
    required TResult Function() loading,
  }) {
    return notLogged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLogged,
    TResult Function(UserBase user)? logged,
    TResult Function(String cause)? loginFailed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotLoggedState value) notLogged,
    required TResult Function(LoggedState value) logged,
    required TResult Function(LoginFailedState value) loginFailed,
    required TResult Function(LoadingState value) loading,
  }) {
    return notLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotLoggedState value)? notLogged,
    TResult Function(LoggedState value)? logged,
    TResult Function(LoginFailedState value)? loginFailed,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged(this);
    }
    return orElse();
  }
}

abstract class NotLoggedState implements LoginBlocState {
  const factory NotLoggedState() = _$NotLoggedState;
}

/// @nodoc
abstract class $LoggedStateCopyWith<$Res> {
  factory $LoggedStateCopyWith(
          LoggedState value, $Res Function(LoggedState) then) =
      _$LoggedStateCopyWithImpl<$Res>;
  $Res call({UserBase user});
}

/// @nodoc
class _$LoggedStateCopyWithImpl<$Res> extends _$LoginBlocStateCopyWithImpl<$Res>
    implements $LoggedStateCopyWith<$Res> {
  _$LoggedStateCopyWithImpl(
      LoggedState _value, $Res Function(LoggedState) _then)
      : super(_value, (v) => _then(v as LoggedState));

  @override
  LoggedState get _value => super._value as LoggedState;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(LoggedState(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserBase,
    ));
  }
}

/// @nodoc
class _$LoggedState implements LoggedState {
  const _$LoggedState(this.user);

  @override
  final UserBase user;

  @override
  String toString() {
    return 'LoginBlocState.logged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $LoggedStateCopyWith<LoggedState> get copyWith =>
      _$LoggedStateCopyWithImpl<LoggedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLogged,
    required TResult Function(UserBase user) logged,
    required TResult Function(String cause) loginFailed,
    required TResult Function() loading,
  }) {
    return logged(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLogged,
    TResult Function(UserBase user)? logged,
    TResult Function(String cause)? loginFailed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotLoggedState value) notLogged,
    required TResult Function(LoggedState value) logged,
    required TResult Function(LoginFailedState value) loginFailed,
    required TResult Function(LoadingState value) loading,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotLoggedState value)? notLogged,
    TResult Function(LoggedState value)? logged,
    TResult Function(LoginFailedState value)? loginFailed,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class LoggedState implements LoginBlocState {
  const factory LoggedState(UserBase user) = _$LoggedState;

  UserBase get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedStateCopyWith<LoggedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFailedStateCopyWith<$Res> {
  factory $LoginFailedStateCopyWith(
          LoginFailedState value, $Res Function(LoginFailedState) then) =
      _$LoginFailedStateCopyWithImpl<$Res>;
  $Res call({String cause});
}

/// @nodoc
class _$LoginFailedStateCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res>
    implements $LoginFailedStateCopyWith<$Res> {
  _$LoginFailedStateCopyWithImpl(
      LoginFailedState _value, $Res Function(LoginFailedState) _then)
      : super(_value, (v) => _then(v as LoginFailedState));

  @override
  LoginFailedState get _value => super._value as LoginFailedState;

  @override
  $Res call({
    Object? cause = freezed,
  }) {
    return _then(LoginFailedState(
      cause == freezed
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$LoginFailedState implements LoginFailedState {
  const _$LoginFailedState(this.cause);

  @override
  final String cause;

  @override
  String toString() {
    return 'LoginBlocState.loginFailed(cause: $cause)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginFailedState &&
            (identical(other.cause, cause) ||
                const DeepCollectionEquality().equals(other.cause, cause)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cause);

  @JsonKey(ignore: true)
  @override
  $LoginFailedStateCopyWith<LoginFailedState> get copyWith =>
      _$LoginFailedStateCopyWithImpl<LoginFailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLogged,
    required TResult Function(UserBase user) logged,
    required TResult Function(String cause) loginFailed,
    required TResult Function() loading,
  }) {
    return loginFailed(cause);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLogged,
    TResult Function(UserBase user)? logged,
    TResult Function(String cause)? loginFailed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(cause);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotLoggedState value) notLogged,
    required TResult Function(LoggedState value) logged,
    required TResult Function(LoginFailedState value) loginFailed,
    required TResult Function(LoadingState value) loading,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotLoggedState value)? notLogged,
    TResult Function(LoggedState value)? logged,
    TResult Function(LoginFailedState value)? loginFailed,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class LoginFailedState implements LoginBlocState {
  const factory LoginFailedState(String cause) = _$LoginFailedState;

  String get cause => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginFailedStateCopyWith<LoginFailedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;
}

/// @nodoc
class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'LoginBlocState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLogged,
    required TResult Function(UserBase user) logged,
    required TResult Function(String cause) loginFailed,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLogged,
    TResult Function(UserBase user)? logged,
    TResult Function(String cause)? loginFailed,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotLoggedState value) notLogged,
    required TResult Function(LoggedState value) logged,
    required TResult Function(LoginFailedState value) loginFailed,
    required TResult Function(LoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotLoggedState value)? notLogged,
    TResult Function(LoggedState value)? logged,
    TResult Function(LoginFailedState value)? loginFailed,
    TResult Function(LoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements LoginBlocState {
  const factory LoadingState() = _$LoadingState;
}
