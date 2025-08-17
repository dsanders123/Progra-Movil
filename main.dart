import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            const Text("Jun 2", style: TextStyle(fontSize: 16, color: Colors.grey)),
            const Text("London", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

            const SizedBox(height: 8),

            
            const Text(
              "21°C",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const Text(
              "Overcast Clouds",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            const SizedBox(height: 24),

         
            const Text(
              "Temperatures",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(
                  children: [
                    Icon(Icons.cloud, color: Colors.blueGrey),
                    Text("8 PM"),
                    Text("21°C"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.cloud, color: Colors.blueGrey),
                    Text("11 PM"),
                    Text("22°C"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),

         
            const Text(
              "Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(
                  children: [
                    Text("Minimum", style: TextStyle(color: Colors.grey)),
                    Text("21°C", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text("Maximum", style: TextStyle(color: Colors.grey)),
                    Text("22°C", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(
                  children: [
                    Text("Pressure", style: TextStyle(color: Colors.grey)),
                    Text("1020 Pa", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    Text("Humidity", style: TextStyle(color: Colors.grey)),
                    Text("41%", style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
