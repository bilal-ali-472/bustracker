import 'package:bustracker/driver/login/view/login.dart';
import 'package:bustracker/driver/signup/view/signup.dart';
import 'package:bustracker/student/login/view/login.dart';

import 'package:bustracker/student/signup/view/signup.dart';

import 'package:bustracker/student/track/view/Strack.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _SHomepageState();
}

class _SHomepageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 115, top: 50),
            child: Image.asset(
              'assets/Images/imagesr.jpg',
              height: 150,
              width: 140,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 115, top: 200),
            child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SLoginScreen(),
                    )),
                child: Text(
                  'STUDENT',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                )),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 115),
            child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DLogin_Screen(),
                    )),
                child: Text(
                  'DRIVER',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                )),
          )
        ],
      ),
    );
  }
}
