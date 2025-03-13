import 'package:flutter/material.dart';
import 'item.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({super.key});

  @override
  Widget build(BuildContext context)   {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Weather App', style: TextStyle(color: Colors.black)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [Icon(Icons.add, color: Colors.black)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Today', style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 10),
            Text('28°C', style: TextStyle(fontSize: 64, color: Colors.blue)),
            Divider(height: 40, thickness: 2),
            SizedBox(height: 10),
            Text('Sunny', style: TextStyle(fontSize: 20, color: Colors.grey)),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, color: Colors.blue, size: 16),
                SizedBox(width: 5),
                Text(
                  '5 km/h',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Next 7 days',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      WeatherItem(
                        time: 'Now',
                        temperature: '28°C',
                        windSpeed: '10 km/h',
                      ),
                      WeatherItem(
                        time: '17.00',
                        temperature: '28°C',
                        windSpeed: '10 km/h',
                      ),
                      WeatherItem(
                        time: '20.00',
                        temperature: '28°C',
                        windSpeed: '10 km/h',
                      ),
                      WeatherItem(
                        time: '23.00',
                        temperature: '28°C',
                        windSpeed: '10 km/h',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}