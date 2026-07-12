import 'package:flutter/material.dart';
import '../services/storage_service.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  List<int> scores = [];

  @override
  void initState() {
    super.initState();
    loadScores();
  }

  Future<void> loadScores() async {
    scores = await StorageService.loadScores();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    int games = scores.length;

    int best = games == 0
        ? 0
        : scores.reduce((a, b) => a > b ? a : b);

    double average = games == 0
        ? 0
        : scores.reduce((a, b) => a + b) / games;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Statistics"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              "Games Played: $games",
              style: const TextStyle(fontSize: 26),
            ),

            const SizedBox(height: 20),

            Text(
              "Best Score: $best / 10",
              style: const TextStyle(fontSize: 26),
            ),

            const SizedBox(height: 20),

            Text(
              "Average Score: ${average.toStringAsFixed(1)} / 10",
              style: const TextStyle(fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}