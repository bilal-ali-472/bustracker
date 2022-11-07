part of 'authentication_d_bloc.dart';

@immutable
abstract class AuthenticationDEvent {}

class LoginDriverEvent extends AuthenticationDEvent
 {
String email;
String password;

LoginDriverEvent({required this.email,required this.password});

 }
