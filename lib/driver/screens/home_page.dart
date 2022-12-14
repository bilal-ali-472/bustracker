import 'package:bustracker/driver/screens/d_complaint.dart';
import 'package:bustracker/driver/screens/d_notification.dart';
import 'package:bustracker/driver/screens/d_profile.dart';
import 'package:bustracker/driver/screens/d_track.dart';
import 'package:flutter/material.dart';

class Ddashboaredpage extends StatefulWidget {
  Ddashboaredpage({Key? key}) : super(key: key);

  @override
  State<Ddashboaredpage> createState() => _DdashboaredpageState();
}

class _DdashboaredpageState extends State<Ddashboaredpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Colors.amber[400],
          automaticallyImplyLeading: false,

          // leading: Icon(Icons.person),
          title:
           Text(
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
                        builder: (context) => DriverProfilepage(),
                      )),
                  child: Icon(Icons.person,)),label: 'profile',
                  backgroundColor: Colors.amberAccent
             ),
          
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DriverTrackpage(),
                      )),
                  child: Icon(Icons.search)),label: 'search',
             ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DriverComplaintpage(),
                      )),
                  child: Icon(Icons.message)),label: 'complaint',
              ),
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DriverNotoficationpage(),
                      )),
                  child: Icon(Icons.notification_add)),label: 'notifctn',
              ),
        ]),
        );
  }
}
   