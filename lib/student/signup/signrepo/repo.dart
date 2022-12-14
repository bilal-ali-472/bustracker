


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpRepo {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final userRef = FirebaseFirestore.instance.collection("studentdetails");
  // FirebasFirestore.instance.collection('Studentdetails');
  Future<String> createUser({String? email, String? password,String? firstname,String? lastname}) async {
    try {
      final UserCredential = await _auth.createUserWithEmailAndPassword(
          email: email!, password: password!);

          await userRef.doc(UserCredential.user!.uid).set({
            'userId':UserCredential.user!.uid,
            'firstname':firstname,
            'lastname':lastname,
            'email':email,
            'password':password,
            'profile_image': ''

          });

          return 'successfull';
        
    } on FirebaseAuthException catch (e) {
      print(email);
      print('----------------------------------------------------------------');
      print(e);
      return e.code;

      //  rethrow ;
    }
  }
}
