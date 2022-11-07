part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent {}


class LoginStudentEvent extends AuthenticationEvent
 {
String email;
String password;

LoginStudentEvent({required this.email,required this.password});

 }
