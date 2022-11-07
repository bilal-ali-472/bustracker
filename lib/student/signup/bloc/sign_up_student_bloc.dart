import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_up_student_event.dart';
part 'sign_up_student_state.dart';

class SignUpStudentBloc extends Bloc<SignUpStudentEvent, SignUpStudentState> {
  SignUpStudentBloc() : super(SignUpStudentInitial()) {
    on<SignUpStudentEvent>((event, emit) async{
     


     if(event is SignupEvent){

      final FirebaseAuth _auth = FirebaseAuth.instance;

      try{
      await _auth.createUserWithEmailAndPassword(email: event.email, password: event.password);
      emit(SignupSuccess ());
      }on FirebaseAuthException catch(e) {

        print(e.code);
        emit(SignupFailed(errMessage: e.code));
      }
     }
    });
  }
}
