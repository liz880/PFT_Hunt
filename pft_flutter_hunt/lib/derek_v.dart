import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class DerekVPage extends StatefulWidget {
  const DerekVPage({super.key});

  @override
  State<DerekVPage> createState() => _DerekVPageState();
}

class _DerekVPageState extends State<DerekVPage> {
  TextEditingController answerController = TextEditingController();
  static const String correctAnswer = 'Waplowski';
  bool isCorrect = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:
                const Color(0xFF3C1053),
            title: const Text(
              'Second Floor Trophy Case',
              style: TextStyle(
                color: const Color(
                    0xFFD29F13),
              ),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.question_answer)),
              ],
            ),
          ),
          body: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.3, 
                  child: Image.asset(
                    'assets/robot.jpeg', 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TabBarView(
                children: [
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
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF3C1053),
                          foregroundColor:
                              const Color(0xFFD29F13),
                        ),
                        child: const Text('Back'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),

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
                      Container(
                        color:
                            Colors.white, 
                        width: 300, 
                        padding: EdgeInsets.all(
                            8.0), 
                        child: TextField(
                          controller: answerController,
                          decoration: const InputDecoration(
                            labelText: 'Enter your answer here',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
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
                                      .red) 
                              : const Color(
                                  0xFF3C1053),
                          foregroundColor:
                              const Color(0xFFD29F13), 
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
                    ],
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
