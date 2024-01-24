import 'package:flutter/material.dart';

class NetworkHome extends StatelessWidget {
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
      child: Container (
        height: 80.0, // this is the height of the card 
        child: ListTile(
          title: Text(cityName),
          trailing: Column(
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
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        onTap: () {
          // Add onTap functionality here if needed
          },
        ),
        ),
      );
  }
}
