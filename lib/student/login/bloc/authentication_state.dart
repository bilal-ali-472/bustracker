part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class LoginSuccess extends AuthenticationState{}

class LoginFailed extends AuthenticationState{

  String Error_Message;
  LoginFailed({required this.Error_Message});
}
