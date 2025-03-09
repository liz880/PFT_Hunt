import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class DerekVPage extends StatefulWidget {
  const DerekVPage({super.key});

  @override
  State<DerekVPage> createState() => _DerekVPageState();
}

class _DerekVPageState extends State<DerekVPage> {
  // TextEditingController for handling input
  TextEditingController answerController = TextEditingController();
  // Correct answer (case-insensitive check)
  static const String correctAnswer = 'Panera Bread';

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
            title: const Text('Test'),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.white70,
                    width: 450,
                    height: 330,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "This atrium space is aptly named “The Commons” and serves as the main gathering space for everyone in Patrick F. Taylor Hall. Students frequent this space between classes, not only because of the Panera Bread, but also because of the nearby Dow Student Leadership Incubator, which serves as a meeting and storage space for the more than 40 student organizations that are part of our college.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Back to Home'),
                    onPressed: () {
                      homeScreen(context);
                    },
                  ),
                ],
              ),

              // "Question" tab content with fill-in-the-blank format
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white70,
                    width: 450,
                    height: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "Where can you use a Sip Club Membership to get a refreshing drink?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
                      if (answerController.text.trim().toLowerCase() ==
                          correctAnswer.toLowerCase()) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Correct!'),
                            content:
                                const Text('You entered the correct answer.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Incorrect!'),
                            content: const Text('Try again!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: const Text('Check Answer'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
