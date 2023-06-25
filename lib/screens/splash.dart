import 'dart:async';

import 'package:flutter/material.dart';
import 'package:techxcel/screens/intro.dart';

class splash extends StatefulWidget
{
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () { 
      
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>intro()));
      
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        color: Colors.black,

        child: Image.asset("assets/images/techx.png"),
      ),
    );
  }
}