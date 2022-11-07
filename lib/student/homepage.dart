
import 'package:bustracker/driver/login/login.dart';
import 'package:bustracker/driver/signup/signup.dart';
import 'package:bustracker/student/login/login.dart';

import 'package:bustracker/student/signup/signup.dart';

import 'package:bustracker/student/track/Strack.dart';
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
      backgroundColor: Colors.amberAccent.shade400,
      body: 
        Column(
        children: [
         Padding(
           padding: const EdgeInsets.only(left: 115,top: 50),
           child: Image.asset('assets/Images/downloadtr.jpg',height: 120,width:140,),
         ),
          
          Padding(
            padding: const EdgeInsets.only(left: 115,top: 200),
            child: GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SLoginScreen(),)),child: Text('STUDENT',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),)),
          ),
           SizedBox(
            height: 15,
            
           ),
           Padding(
             padding: const EdgeInsets.only(left: 115),
             child: GestureDetector(onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>DLogin_Screen(),)) ,child: Text('DRIVER',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight:FontWeight.w900),)),
           )
        ],
      ),
      

      // bottomNavigationBar: BottomNavigationBar(
        
      //   items: <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home',backgroundColor: Colors.amberAccent.shade100,),
      //    BottomNavigationBarItem(icon: GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Track(),)) ,child: Icon(Icons.search)),label: 'Search'),
      //    BottomNavigationBarItem(icon: GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(
      //     builder: (context) => ComplaintPage(),)),child: Icon(Icons.message)),label: 'Message'),
      //     BottomNavigationBarItem(icon: GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) =>NotificationPage() , )),child: Icon(Icons.notification_add)),label: 'Nofification'),
      // ]
      // )
    );
  }
}