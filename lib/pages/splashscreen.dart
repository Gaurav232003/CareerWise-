import 'package:flutter/material.dart';
import 'test.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _countdown = 5; // Set your countdown time in seconds

  @override
  void initState() {
    super.initState();

    // Start a countdown timer
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdown > 0) {
          _countdown--;
        } else {
          timer.cancel(); // Stop the timer when countdown reaches 0
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Test()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Splash Screen with Countdown'),
      ),
      body: Center(
        child: Text(
          '$_countdown', // Display the countdown value
          style: TextStyle(fontSize: 48.0),
        ),
      ),
    );
  }
}
