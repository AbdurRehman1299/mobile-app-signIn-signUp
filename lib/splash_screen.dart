import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3), () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SignInPage()),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flash_on, size: 100, color: Colors.white,),
            SizedBox(height: 20,),
            Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 24),),
          ],
        ),
      ),
    );
  }
}