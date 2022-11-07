import 'package:bustracker/student/dash_board.dart';
import 'package:bustracker/student/homepage.dart';
import 'package:bustracker/student/login/bloc/authentication_bloc.dart';

import 'package:bustracker/student/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

TextEditingController _loginemail = TextEditingController(),
    _loginpassword = TextEditingController();

class SLoginScreen extends StatefulWidget {
  SLoginScreen({Key? key}) : super(key: key);

  @override
  State<SLoginScreen> createState() => _SLoginScreenState();
}

class _SLoginScreenState extends State<SLoginScreen> {
  final _validate = GlobalKey<FormState>();
  final auth_bloc = AuthenticationBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => auth_bloc,
      child: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.push(context, MaterialPageRoute( builder: (context) => SdashBoard(),
                ));
          } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Login failed')));
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Student Login',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
          ),
          body: Form(
            // key: _validate,
            child: ListView(
              children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 650,
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                        ),
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
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: _loginpassword,
                            autofocus: true,
                            decoration: InputDecoration(
                                hintText: 'username',
                                border: OutlineInputBorder()),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, right: 240),
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
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            validator: ((value) {
                              if (_validate == '') {
                                return 'please enter a text';
                              }
                              return null;
                            }),
                            // controller: _logincontroller,
                            autofocus: true,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (value) {}),
                            const Text(
                              'Remember me?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: SizedBox(
                            width: 250,
                            height: 50,
                            child: ElevatedButton(
                                onPressed: ()  {
                                  auth_bloc.add(LoginStudentEvent(
                                      email: _loginemail.text,
                                      password: _loginpassword.text));
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.grey.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                        side: BorderSide(
                                            width: 2, color: Colors.white))),
                                child: const Text(
                                  'login',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text('Forgot password?',
                                style: TextStyle(color: Colors.blue))),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 100,
                            width: 300,
                            decoration: BoxDecoration(),
                            //color: Colors.grey.withOpacity(0.5),
                            child: Row(
                              children: [
                                //     Padding(
                                //       padding: const EdgeInsets.only(left: 25),
                                //       child: Text(
                                //         'need an account?',
                                //         style: TextStyle(fontSize: 14),
                                //       ),
                                //     ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  SignupScreen()));
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                        left: 110,
                                      ),
                                      child: Text(
                                        'SignUp',
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
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


 // 114 try {
                              //   await LoginRepo().loginUser(
                              //     _loginemail.text,
                              //     _loginpassword.text,
                              //   );
                              //   await Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => Homepage(),
                              //       ));
                              // } catch (e) {
                              //   await ScaffoldMessenger.of(context)
                              //       .showSnackBar(SnackBar(
                              //           content: Text(
                              //               'invalid email or password ')));
                              // }