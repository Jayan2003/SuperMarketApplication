import 'package:flutter/material.dart';
import 'dart:async';
import 'homepage.dart'; // Import HomePage

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomePage after 3 seconds
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                'assets/images/Ideas Logo Supermercado.jpeg', // Ensure this path is correct
                width: 100.0, // Set the width of the logo
                height: 100.0, // Set the height of the logo
                fit: BoxFit.cover, // Ensure the image covers the circle
              ),
            ),
            SizedBox(height: 20),
            Text(
              'SUPERMARKET APP',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
