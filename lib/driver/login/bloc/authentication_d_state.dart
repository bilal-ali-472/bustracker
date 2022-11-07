part of 'authentication_d_bloc.dart';

@immutable
abstract class AuthenticationDState {}

class AuthenticationDInitial extends AuthenticationDState {}


class _LoginSuccess extends AuthenticationDState {}

class _Loginfailed extends AuthenticationDState{

  String Error_message;

 _Loginfailed({required this.Error_message});

}