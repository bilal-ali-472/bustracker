import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:bustracker/student/signup/bloc/sign_up_student_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_up_driver_event.dart';
part 'sign_up_driver_state.dart';

class SignUpDriverBloc extends Bloc<SignUpDriverEvent, SignUpDriverState> {
  SignUpDriverBloc() : super(SignUpDriverInitial()) {
    on<SignUpDriverEvent>((event, emit)async {
     
if(event is SignupEvent){
  final FirebaseAuth _auth_ = FirebaseAuth.instance;
  try {
    await _auth_.createUserWithEmailAndPassword(email: event.email, password:event.password);
emit(SignUpSuccess());
  } on FirebaseAuthException  catch (e) {
    
    print(e.code);
    emit(signUpFailed(ErrorMessage: e.code));
  }
}


    });
  }
}
