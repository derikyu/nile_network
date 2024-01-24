import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class NetworkHome extends StatefulWidget {
  //const NetworkHome ((super.key));
  @override 
  _NetworkHomeState createState() => _NetworkHomeState();
}

class _NetworkHomeState extends State<NetworkHome> {
  @override
  void initState() {
    super.initState();
    _getData(); // Call _getData() when the widget is initialized.
  }

  Future<void> _getData() async { //if we use await... then we need async

    //We have a Url which we convert to Uri. We then save the response 
    String urlString = "https://jsonplaceholder.typicode.com/albums/1/";

    Uri uri = Uri.parse(urlString);

    var response = await http.get(uri);

    print("Response Code: " + response.statusCode.toString()); //We can not concatonate string + init so we convert to strong
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Status'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Column(
              children: [
                Text('7/9',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                Text('Networks available',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                Text('Last updated: 10 mins',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey.shade200,
                  ),
                ),
              ]
            ),
          ),
          Expanded(
            child: Container (
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,),
              child: ListView (
                children: [
                  CityCard(
                    cityName: 'Harare',
                    online: true,
                    networkSpeed: 'High Speed',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                    cityName: 'Lagos',
                    online: true,
                    networkSpeed: 'Low Speed',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                    cityName: 'Abidjan',
                    online: false,
                    networkSpeed: 'Offline',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                    cityName: 'Cape Town',
                    online: true,
                    networkSpeed: 'High Speed',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                  cityName: 'Kigali',
                    online: true,
                    networkSpeed: 'High Speed',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                  cityName: 'Lome',
                    online: true,
                    networkSpeed: 'High Speed',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                  cityName: 'Nairobi',
                    online: true,
                    networkSpeed: 'High Speed',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                    cityName: 'Cairo',
                    online: true,
                    networkSpeed: 'Medium Speed',
                    lastUpdated: '10mins ago',
                  ),
                  CityCard(
                    cityName: 'Accra',
                    online: false,
                    networkSpeed: 'Offline',
                    lastUpdated: '10mins ago',
                  ),
              ]),
            )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // the action to be performed 
        },
      backgroundColor: Colors.green, // Set the background color
        child: Icon(
          Icons.create, // Use the create icon
          color: Colors.white, // Set the icon color
        ),  
      )
    );
  }
}

class CityCard extends StatelessWidget {
  final String cityName;
  final bool online;
  final String networkSpeed;
  final String lastUpdated; 

  CityCard({
    required this.cityName,
    required this.online,
    required this.networkSpeed,
    required this.lastUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(cityName),
             Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  online ? 'Online' : 'Offline',
                  style: TextStyle(
                    color: online ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Speed: $networkSpeed',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Last Updated: $lastUpdated',
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
