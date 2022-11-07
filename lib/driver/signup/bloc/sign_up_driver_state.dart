part of 'sign_up_driver_bloc.dart';

@immutable
abstract class SignUpDriverState {}

class SignUpDriverInitial extends SignUpDriverState {}

class SignUpSuccess extends SignUpDriverState{}

class signUpFailed extends SignUpDriverState{

String ErrorMessage;

signUpFailed({required this.ErrorMessage});

}
