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
            backgroundColor: const Color.fromARGB(255, 196, 53, 244), // Set the AppBar color to blue
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    color: Colors.white70,
                    width: 450,
                    height: 330,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                      Image.asset('pft-3rd-floor.jpg', 
                      height: 162, 
                      scale: 2.5
                      ),
                      SizedBox(height: 20),

                     Text(
                     "All department (major) suites are located on the third floor of PFT. This is where students go for questions or assistance related to their major.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ]
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
                        "Where is the Department Suite of Computer Science",
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
                          ? (isCorrect
                              ? Colors.green
                              : Colors
                                  .red) // Green if correct, Red if incorrect
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
            ],
          ),
        ),
      ),
    );
  }
}
