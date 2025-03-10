import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class StudyRoomsPage extends StatefulWidget {
  const StudyRoomsPage({super.key});
 
  @override
  State<StudyRoomsPage> createState() => StudyState();
}

class StudyState extends State<StudyRoomsPage> {

  // Bool to determine if user has pressed the button
  bool stateA = false;
  bool stateB = false;
  bool stateC = false;

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
          title: const Text('Study Rooms'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.question_answer)),
            ],
          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pft_commons.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          child: TabBarView(

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

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateA ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateA = !stateA;
                      });
                    },
                    child: Text('a) Chick-Fil-A'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateB ? Colors.lightGreenAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateB = !stateB;
                      });
                    },
                    child: Text('b) Panera Bread'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateC ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateC = !stateC;
                      });
                    },
                    child: Text("c) CC's Coffee"),
                  ),
                  
                ],
              ),

              // Children for "Image" tab
                  Column(
                    children: [
                      Text(""),
                    ],
                  ),

            ],
          ),
        ),
      ),
      ),
    );
  }
}

class DeanSuitePage extends StatefulWidget {
  const DeanSuitePage({super.key});
 
  @override
  State<DeanSuitePage> createState() => DeanState();
}

class DeanState extends State<DeanSuitePage> {

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
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          title: const Text('PFT Commons'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.question_answer)),
              Tab(icon: Icon(Icons.image)),
            ],
          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pft_commons.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          child: TabBarView(

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

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedCFA ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedCFA = !isPressedCFA;
                      });
                    },
                    child: Text('a) Chick-Fil-A'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedPB ? Colors.lightGreenAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedPB = !isPressedPB;
                      });
                    },
                    child: Text('b) Panera Bread'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedCC ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedCC = !isPressedCC;
                      });
                    },
                    child: Text("c) CC's Coffee"),
                  ),
                  
                ],
              ),

              // Children for "Image" tab
                  Column(
                    children: [
                      Text(""),
                    ],
                  ),

            ],
          ),
        ),
      ),
      ),
    );
  }
}

class StudentServicesPage extends StatefulWidget {
  const StudentServicesPage({super.key});
 
  @override
  State<StudentServicesPage> createState() => StudentServicesState();
}

class StudentServicesState extends State<StudentServicesPage> {

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
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          title: const Text('PFT Commons'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.question_answer)),
              Tab(icon: Icon(Icons.image)),
            ],
          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pft_commons.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          child: TabBarView(

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

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedCFA ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedCFA = !isPressedCFA;
                      });
                    },
                    child: Text('a) Chick-Fil-A'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedPB ? Colors.lightGreenAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedPB = !isPressedPB;
                      });
                    },
                    child: Text('b) Panera Bread'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedCC ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedCC = !isPressedCC;
                      });
                    },
                    child: Text("c) CC's Coffee"),
                  ),
                  
                ],
              ),

              // Children for "Image" tab
                  Column(
                    children: [
                      Text(""),
                    ],
                  ),

            ],
          ),
        ),
      ),
      ),
    );
  }
}