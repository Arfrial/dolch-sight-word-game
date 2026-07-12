import 'package:flutter/material.dart';
import 'flash_dash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedLevel = "Pre-Primer";

  final List<String> levels = [
    "Pre-Primer",
    "Primer",
    "1st Grade",
    "2nd Grade",
    "3rd Grade",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        title: const Text("⭐ Flash Dash ⭐"),
        centerTitle: true,
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 20),

            const Text(
              "Choose Your Level",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: levels.length,
                itemBuilder: (context, index) {

                  final level = levels[index];

                  return Card(
                    elevation: 5,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: RadioListTile<String>(
                      title: Text(
                        level,
                        style: const TextStyle(fontSize: 22),
                      ),
                      value: level,
                      groupValue: selectedLevel,
                      onChanged: (value) {
                        setState(() {
                          selectedLevel = value!;
                        });
                      },
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                      context,
                    MaterialPageRoute(
                      builder: (context) => FlashDashScreen(
                        level: selectedLevel,
                      ),
                     ),
                    );
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text("PLAY"),
              ),
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 65,
              child: ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text("STATISTICS"),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}