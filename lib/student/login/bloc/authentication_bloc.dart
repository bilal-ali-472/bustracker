import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationEvent>((event, emit) async {
      if (event is LoginStudentEvent) { 
        final FirebaseAuth auth = FirebaseAuth.instance;
        try {
          await auth.signInWithEmailAndPassword(
            
              email: event.email, password: event.password);
              emit(LoginSuccess());
        } on FirebaseAuthException catch (e) {
          print(e.code);
          emit (LoginFailed(Error_Message: e.code));
        }
        
    }
    });
  }
}
