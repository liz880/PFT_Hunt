import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class CassMPage extends StatelessWidget {
  const CassMPage({super.key});

  Future<void> homeScreen(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => const MyApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cassidy M')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
            homeScreen(context);
          },
        ),
      ),
    );
  }
}