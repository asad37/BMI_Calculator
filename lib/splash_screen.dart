import 'dart:async';

import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () { 
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset("bmi.png")
      ],)
    );
  }
}