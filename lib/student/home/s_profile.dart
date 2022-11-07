

import 'package:flutter/material.dart';

class Sprofile extends StatefulWidget {
  Sprofile({Key? key}) : super(key: key);

  @override
  State<Sprofile> createState() => _SprofileState();
}

class _SprofileState extends State<Sprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[400],
        title: Text('profile',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,),
        textAlign: TextAlign.left,),
        

      ),
    );
  }
}