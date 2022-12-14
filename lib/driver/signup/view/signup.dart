import 'package:bustracker/driver/login/view/login.dart';
import 'package:bustracker/student/login/view/login.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({Key? key}) : super(key: key);

  @override
  State<Signup_Screen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<Signup_Screen> {
  TextEditingController _signupcontroller = TextEditingController(text: '');
  TextEditingController _signupcontroller2 = TextEditingController(text: '');
  TextEditingController _signupidcontroller = TextEditingController( text: '');
  TextEditingController emailcontroller3 = TextEditingController(text: '');
  TextEditingController passwordcontroller4 = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Registration',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),),
        backgroundColor: Color.fromARGB(255, 226, 223, 223),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'SIGNUP',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 240),
                    child: Text(
                      'First name',
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
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'firstname', border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 240),
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
                          hintText: 'lastname', border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 240),
                    child: Text(
                      'Driver ID',
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
                      controller: _signupidcontroller,
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: '@name4532', border: OutlineInputBorder()),
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
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      controller: emailcontroller3,
                      autofocus: true,
                      decoration: InputDecoration(
                          hintText: 'email@gmail.com',
                          border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 270),
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
                          hintText: 'password', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SLoginScreen()));
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
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
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
                                    builder: (context) => DLogin_Screen()));
                          },
                          child: Text(
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
    );
  }
}
