import 'package:flutter/material.dart';
import 'network_home.dart';
import 'login.dart';
import 'splash.dart';


void main() => runApp(NetworkApp());

class NetworkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nile Network',
      //home: NetworkHome(),
      //home: Login(),
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => Login(),
        '/home': (context) => NetworkHome(),
      }
    );
  }
}


