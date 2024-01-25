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
            SizedBox(height: 16.0),
            Container(
              height: 60.0, // Set the height you desire
              width: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.white, 
                ),
                child: Dismissible(
                  key: Key('1'),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    if (direction == DismissDirection.endToStart) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => NetworkHome()),
                      );
                    } 
                  },
                  child: Center(
                    child: Text(
                      'Get Started',
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
