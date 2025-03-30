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
  static const String correctAnswer = 'Waplowski';
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
            backgroundColor:
                const Color(0xFF3C1053), // Set the AppBar color to blue
            title: const Text(
              'Second Floor Trophy Case',
              style: TextStyle(
                color: Colors.white, // Set the title text color to white
              ),
            ),
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
                        "Spanning the second and third floors, a prominent display case along the wall highlights the achievements of engineering students, showcasing multiple accolades and innovative machines developed throughout the years. This exhibit serves as a testament to the creativity and technical expertise of the students, reflecting the high standards of the LSU College of Engineering.",
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
                        "What is the last name of the robot with the first name Mike?",
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
                          : const Color(
                              0xFF3C1053), // Default color before checking
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
