import 'package:bustracker/routes/route_constence.dart';
import 'package:bustracker/student/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter{

  Route onGenerateRoute (RouteSettings route){

    switch(route.name)
    {
      case Routeconstance.user_signup:
      return MaterialPageRoute(builder: (context) =>HomePage());
      default : return MaterialPageRoute(builder: (context) =>HomePage());
    }
  }
}