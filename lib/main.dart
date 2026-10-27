import 'package:flutter/material.dart';

void main() => runApp(const WaterTrackerApp());

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterTrackerScreen(),
    );
  }
}

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  static const blue = Color(0xFF4262C4);
  static const bg = Color(0xFFE3F4FB);
  static const drop = Color(0xFF2E86D1);
  static const dark = Color(0xFF1B3A5C);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        title: const Text('Water Tracker',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              const Icon(Icons.water_drop, size: 90, color: drop),
              const SizedBox(height: 16),
              const Text('Stay Hydrated!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold, color: dark)),
              const SizedBox(height: 8),
              const Text('Build a healthy daily habit',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: dark)),
              const SizedBox(height: 28),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    Text('Daily Water Goal',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: dark)),
                    Text('8',
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            color: blue)),
                    Text('glasses per day',
                        style: TextStyle(fontSize: 14, color: dark)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const InfoTile(text: 'Drink water regularly'),
              const SizedBox(height: 12),
              const InfoTile(text: 'Bring your water bottle'),
              const SizedBox(height: 16),
              const Text('Every glass counts!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: dark)),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String text;
  const InfoTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: const Color(0xFF7CCBEE),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: WaterTrackerScreen.dark)),
    );
  }
}