part of 'sign_up_student_bloc.dart';

@immutable
abstract class SignUpStudentState {}

class SignUpStudentInitial extends SignUpStudentState {}

class SignupSuccess extends SignUpStudentState{}


class SignupFailed extends SignUpStudentState{
  String errMessage;

  SignupFailed({required this.errMessage});


}
