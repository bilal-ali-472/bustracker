import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:bustracker/student/login/bloc/authentication_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'authentication_d_event.dart';
part 'authentication_d_state.dart';

class AuthenticationDBloc extends
 Bloc<AuthenticationDEvent, AuthenticationDState> {
  AuthenticationDBloc() : super(AuthenticationDInitial()) {
    on<AuthenticationDEvent>((event, emit)async {
      if(event is LoginDriverEvent)
      {
        final FirebaseAuth _auth = FirebaseAuth.instance;
        try {
           await _auth.signInWithEmailAndPassword(
            email: event.email, password: event.password);
            emit(_LoginSuccess());
        }on FirebaseAuthException catch (e) {
          print(e.code);
          emit(_Loginfailed(Error_message: e.code));
        }
      }
     
    });
  }
}
