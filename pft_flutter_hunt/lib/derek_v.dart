import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class DerekVPage extends StatefulWidget {
  const DerekVPage({super.key});

  @override
  State<DerekVPage> createState() => _CassMPageState();
}

class _CassMPageState extends State<DerekVPage> {
  // Bool to determine if user has pressed the button
  bool isPressedCFA = false;
  bool isPressedPB = false;
  bool isPressedCC = false;

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
              // Children for "Info" tab
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
                      // Navigate to second route when tapped.
                      homeScreen(context);
                    },
                  ),
                ],
              ),

              // Children for "Question" Tab
              //const Icon(Icons.question_answer),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: isPressedCFA
                            ? Colors.redAccent
                            : Colors.transparent),
                    onPressed: () {
                      setState(() {
                        isPressedCFA = !isPressedCFA;
                      });
                    },
                    child: Text('a) Chick-Fil-A'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: isPressedPB
                            ? Colors.lightGreenAccent
                            : Colors.transparent),
                    onPressed: () {
                      setState(() {
                        isPressedPB = !isPressedPB;
                      });
                    },
                    child: Text('b) Panera Bread'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: isPressedCC
                            ? Colors.redAccent
                            : Colors.transparent),
                    onPressed: () {
                      setState(() {
                        isPressedCC = !isPressedCC;
                      });
                    },
                    child: Text("c) CC's Coffee"),
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
