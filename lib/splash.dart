import 'package:flutter/material.dart';
import 'network_home.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'splash_hero_server.png',
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
            Container(
              height: 100.0, // Set the height you desire
              color: Colors.white, // Set the background color
              child: Dismissible(
                key: Key('1'),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NetworkHome()
                        ),
                    );
                  }
                },
              child: Center(
                  child: Text(
                    'Swipe to Get Started',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
