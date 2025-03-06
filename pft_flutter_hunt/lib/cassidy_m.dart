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
    return MaterialApp(
      home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PFT Commons'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.question_answer)),
            ],
          ),
        ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  ElevatedButton(
                    child: const Text('Back to Home'),
                    onPressed: () {
                      // Navigate to second route when tapped.
                      homeScreen(context);
                    },
                  ),
                ],
              ),
              const Icon(Icons.question_answer),
            ],
          ),
        ),
      ),
    );
  }
}
/* child: ElevatedButton(
            child: const Text('Back to Home'),
            onPressed: () {
              // Navigate to second route when tapped.
              homeScreen(context);
            },
          ),*/