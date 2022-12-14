import 'dart:io';

import 'package:bustracker/student/Notification/s_notification.dart';
import 'package:bustracker/student/complaints/scomplaint.dart';
import 'package:bustracker/student/home/s_profile.dart';
import 'package:bustracker/student/track/view/Strack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SdashBoard extends StatefulWidget {
  const SdashBoard({super.key});

  @override
  State<SdashBoard> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SdashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            exit(0);
          }, icon:Icon(Icons.arrow_back)),
          backgroundColor: Colors.amber[400],
automaticallyImplyLeading: false,
        
          title: Text(
            'HomePage',
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//             ),label: 'Home',
// backgroundColor: Colors.amberAccent
//           ),
           BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sprofile(),
                      )),
                  child: Icon(Icons.person,)),label: 'profile',
                  backgroundColor: Colors.amberAccent
             ),
          
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => STrack(),
                      )),
                  child: Icon(Icons.search)),label: 'search',
             ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SComplaint(),
                      )),
                  child: Icon(Icons.message)),label: 'complaint',
              ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SNotification(),
                      )),
                  child: Icon(Icons.notification_add)),label: 'notifctn',
              ),
        ]),
        );
  }
}
