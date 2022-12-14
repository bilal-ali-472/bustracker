import 'package:bustracker/driver/screens/home_page.dart';
import 'package:bustracker/driver/signup/view/signup.dart';
import 'package:bustracker/student/Screens/homepage.dart';
import 'package:bustracker/student/login/bloc/authentication_bloc.dart';

import 'package:bustracker/student/signup/view/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';




TextEditingController _loginemail = TextEditingController(),
    _loginpassword = TextEditingController();

class DLogin_Screen extends StatefulWidget {
  DLogin_Screen({Key? key}) : super(key: key);

  @override
  State<DLogin_Screen> createState() => _DLoginScreenState();
}

class _DLoginScreenState extends State<DLogin_Screen> {
  final _validate = GlobalKey<FormState>();
  final auth_bloc = AuthenticationBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.withOpacity(0.5),
      appBar: AppBar(
        title: Text('Driver Login',
        style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
      ),
      body: 
      Form(
        // key: _validate,
        child: ListView(
          children: [
            Center(
              child: Container(
                width: 350,
                height: 650,
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 290),
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
                        controller: _loginemail,
                        autofocus: true,
                        decoration: InputDecoration(
                            hintText: 'username', border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 240),
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
                        controller: _loginpassword,
                        validator: ((value) {
                          if (_validate == '') {
                            return 'please enter a text';
                          }
                          return null;
                        }),
                        // controller: _logincontroller,
                        autofocus: true,
                        decoration: InputDecoration(
                            hintText: 'Password', border: OutlineInputBorder()),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (value) {}),
                        Text(
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Ddashboaredpage ()));

                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey.withOpacity(0.5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    side: BorderSide(
                                        width: 2, color: Colors.white))),
                            child: Text(
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
                        decoration: BoxDecoration(
                           ),
                       
                         child: Row(
                           children: [
                       
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Signup_Screen()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 110,),
                                  child: Text('SignUp',),
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
      
    );
  }
}

