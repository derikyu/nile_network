import 'package:flutter/material.dart';
import 'network_home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the home page when tapped
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => NetworkHome(), // Replace with your home page widget
          ),
        );
      },
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '/splash_hero_server.png',
                width: 350.0,
                height: 350.0,
              ),
              SizedBox(height: 16.0),
              Text(
                'Nile Network',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
