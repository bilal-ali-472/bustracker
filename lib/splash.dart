
import 'package:bustracker/student/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network('https://assets8.lottiefiles.com/packages/lf20_fgvmiyev.json'),
            // Image.asset('assets/Images/imagesrp.png',
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,),
            SizedBox(
              height: 30,
            ),
            // CupertinoActivityIndicator(
            //   radius: 20,
            // ),
            CircularProgressIndicator(
              color: Colors.white,
            )
            
          ],
        ),
      ),
      
      
     
     
    );
  }
}

