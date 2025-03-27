import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class KendrickMPage extends StatefulWidget {
  const KendrickMPage({super.key});

  @override
  State<KendrickMPage> createState() => _KendrickMPageState();
}

class _KendrickMPageState extends State<KendrickMPage> {
  // TextEditingController for handling input
  TextEditingController answerController = TextEditingController();
  // Correct answer (case-insensitive check)
  static const String correctAnswer = '3325';
  // Boolean to track the answer status
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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(
                255, 137, 9, 180), // Set the AppBar color to blue
            title: const Text('The Major Department Suites'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.question_answer)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // "Info" tab content
              SingleChildScrollView(
                // Wrap with SingleChildScrollView for scrolling
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .start, // Start alignment for the content
                  children: [
                    Container(
                      color: Colors.white70,
                      width: double
                          .infinity, // Make container expand based on the screen width
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center, // Keep the content centered
                      child: Column(
                        children: <Widget>[
                          Image.asset('pft-3rd-floor.jpg',
                              height: 162, scale: 2.5),
                          const SizedBox(height: 20),
                          Text(
                            "All department (major) suites are located on the third floor of Patrick F. Taylor Hall. This is where students can seek assistance or get answers to questions related to their specific major, providing a dedicated space for academic support.",
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50), // Add space before the button
                    ElevatedButton(
                      child: const Text('Back to Home'),
                      onPressed: () {
                        homeScreen(context);
                      },
                    ),
                    const SizedBox(height: 20), // Add space below the button
                  ],
                ),
              ),

              // "Question" tab content with fill-in-the-blank format
              SingleChildScrollView(
                // Wrap with SingleChildScrollView for scrolling
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      width: double
                          .infinity, // Make container expand based on the screen width
                      padding: const EdgeInsets.all(16.0),
                      alignment: Alignment.center, // Keep the content centered
                      child: Center(
                        child: Text(
                          "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // TextField for user to fill in the blank
                    TextField(
                      controller: answerController,
                      decoration: const InputDecoration(
                        labelText: 'Enter your answer here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Button to check the answer
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // Check if the answer is correct or not
                          isChecked = true;
                          if (answerController.text.trim().toLowerCase() ==
                              correctAnswer.toLowerCase()) {
                            isCorrect = true;
                          } else {
                            isCorrect = false;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isChecked
                            ? (isCorrect ? Colors.green : Colors.red)
                            : Colors.blue, // Default color before checking
                      ),
                      child: const Text('Check Answer'),
                    ),
                    const SizedBox(height: 20),
                    // Show feedback for correct or incorrect answers
                    if (isChecked)
                      Text(
                        isCorrect ? 'Correct!' : 'Incorrect! Try again.',
                        style: TextStyle(
                          fontSize: 20,
                          color: isCorrect ? Colors.green : Colors.red,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
