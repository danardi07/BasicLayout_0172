import 'package:flutter/material.dart';

class WeatherItem extends StatelessWidget{
  final String time;
  final String temperature;
  final String windSpeed;

  const WeatherItem({super.key, 
    required this.time,
    required this.temperature,
    required this.windSpeed,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        Text(time, style: TextStyle(fontSize: 16)),
        SizedBox(height: 5),
        Icon(Icons.ac_unit, color: Colors.blue, size: 24),
        SizedBox(height: 5),
        Text(temperature, style: TextStyle(fontSize: 16)),
        SizedBox(height: 5),
        Icon(Icons.air, color: Colors.pink, size: 16),
        SizedBox(height: 5),
        Text(windSpeed, style: TextStyle(fontSize: 14, color: Colors.pink)),
        SizedBox(height: 5),
        Icon(Icons.water_drop_outlined, color: Colors.black, size: 16),
        Text('0%', style: TextStyle(fontSize: 14)),
      ],
    );
  }

}