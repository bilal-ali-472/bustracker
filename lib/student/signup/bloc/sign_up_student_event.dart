part of 'sign_up_student_bloc.dart';

@immutable
abstract class SignUpStudentEvent {}

class SignupEvent extends SignUpStudentEvent{

String email;
String password;
String firstname;
String lastname;

SignupEvent({required this .email,required this.password,required this.firstname,required this.lastname});



}
