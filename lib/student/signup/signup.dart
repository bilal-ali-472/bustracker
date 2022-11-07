import 'package:bustracker/routes/route_constence.dart';
import 'package:bustracker/student/login/login.dart';
import 'package:bustracker/student/signup/bloc/sign_up_student_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _signupcontroller = TextEditingController(text: '');
  TextEditingController _signupcontroller2 = TextEditingController();
  TextEditingController emailcontroller3 = TextEditingController(text: '');
  TextEditingController passwordcontroller4 = TextEditingController(text: '');
  final _signupBloc = SignUpStudentBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _signupBloc,
      child: BlocListener<SignUpStudentBloc,SignUpStudentState>(
        listener: (context, state) {
          
          if(state is SignupSuccess){
            Navigator.pushNamed(context, Routeconstance.user_signup);
          }
          else if (state is SignupFailed){
            ScaffoldMessenger.of(context).
            showSnackBar(SnackBar(content: Text(state.errMessage)));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Student Registration',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 226, 223, 223),
          ),
          body: Center(
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'SIGNUP',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, right: 240),
                        child: Text(
                          'First name',
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: 'firstname',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, right: 240),
                        child: Text(
                          'Last name',
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: _signupcontroller2,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: 'lastname',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 30, right: 240),
                      //   child: Text(
                      //     'Student Id No',
                      //     // textAlign: TextAlign.left,
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 20,
                      //     ),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.all(20),
                      //   child: TextField(
                      //     controller: _signupcontroller2,
                      //     autofocus: true,
                      //     decoration: InputDecoration(
                      //         hintText: '@RegNo', border: OutlineInputBorder()),
                      //   ),
                      // ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, right: 290),
                        child: Text(
                          'Email',
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: emailcontroller3,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: 'email@gmail.com',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, right: 270),
                        child: Text(
                          'Password',
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          controller: passwordcontroller4,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: 'password',
                              border: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 250,
                        child: ElevatedButton(
                            onPressed: () async {
                              _signupBloc.add(SignupEvent(
                                lastname:_signupcontroller2.text ,
                                email: emailcontroller3.text,
                                firstname: _signupcontroller.text,
                                password: passwordcontroller4.text,
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey.withOpacity(0.75),
                                side: BorderSide(width: 1, color: Colors.white),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            child: Text(
                              'signup',
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: Text(
                              'already a user?',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SLoginScreen()));
                              },
                              child: const Text(
                                'login',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
