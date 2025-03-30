import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class KendrickMPage extends StatefulWidget {
  const KendrickMPage({super.key});

  @override
  State<KendrickMPage> createState() => _KendrickMPageState();
}

class _KendrickMPageState extends State<KendrickMPage> {
  TextEditingController answerController = TextEditingController();
  static const String correctAnswer = '3325';
  bool isCorrect = false;
  bool isChecked = false;

  Future<void> homeScreen(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 137, 9, 180),
          title: const Text('The Major Department Suites'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  color: Colors.white70,
                  width: double.infinity,
                  height: 150,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "Where is the Computer Science Department located?",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: answerController,
                  decoration: const InputDecoration(
                    labelText: 'Enter your answer here',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset('pft-3rd-floor.jpg', height: 98, scale: 2.5),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isChecked = true;
                      if (answerController.text.trim().toLowerCase() == correctAnswer.toLowerCase()) {
                        isCorrect = true;
                      } else {
                        isCorrect = false;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isChecked
                        ? (isCorrect ? Colors.green : Colors.red)
                        : Colors.blue,
                  ),
                  child: const Text('Check Answer'),
                ),
                const SizedBox(height: 20),
                if (isChecked)
                  Text(
                    isCorrect ? 'Correct!' : 'Incorrect! Try again.',
                    style: TextStyle(
                      fontSize: 20,
                      color: isCorrect ? Colors.green : Colors.red,
                    ),
                  ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text('Back to Home'),
                  onPressed: () {
                    homeScreen(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}