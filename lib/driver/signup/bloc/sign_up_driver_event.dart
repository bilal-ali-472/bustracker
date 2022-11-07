part of 'sign_up_driver_bloc.dart';

@immutable
abstract class SignUpDriverEvent {}


class SignupEvent extends SignUpDriverEvent{

  String email;
  String password;
  String firstname;
  String lastname;

  SignupEvent({required this.email,required this.password,required this.firstname,required this .lastname});
  
}
