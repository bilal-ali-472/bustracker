import 'package:flutter/material.dart';

class DriverTrackpage extends StatefulWidget {
   DriverTrackpage({Key? key}) : super(key: key);

  @override
  State<DriverTrackpage> createState() => _DriverTrackpageState();
}

class _DriverTrackpageState extends State<DriverTrackpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Bus",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,
      ),),),
    );
  }
}