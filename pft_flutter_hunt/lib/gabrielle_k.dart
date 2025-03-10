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
              image: AssetImage("assets/gek_study.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.40), BlendMode.dstATop),
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
                        "You will often see students wandering around for a good place to hunker down and study, and those in the know will first check these study rooms tucked away in the 2100 wing of the second floor. Don't be surprised if you see all of them filled if you don't get there early enough, especially when exam season rolls around.",
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
                        "What is the week before finals called when these rooms will most likely be used?",
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
                    child: Text('a) Tears Week'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateB ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateB = !stateB;
                      });
                    },
                    child: Text('b) Hell Week'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateC ? Colors.lightGreenAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateC = !stateC;
                      });
                    },
                    child: Text("c) Dead Week"),
                  ),
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
  bool stateTrue = false;
  bool stateFalse = false;

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
          title: const Text("Dean's Suite"),
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
              image: AssetImage("assets/gek_dean.png"),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.40), BlendMode.dstATop),
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
                        "The Dean Suite houses some of the overall administration offices within PFT, though students don't often visit for that purpose.",
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
                        "Is this location one of the Lost and Founds within PFT?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateTrue ? Colors.lightGreenAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateTrue = !stateTrue;
                      });
                    },
                    child: Text('True'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateFalse ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateFalse = !stateFalse;
                      });
                    },
                    child: Text('False'),
                  ),
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
  bool stateTrue = false;
  bool stateFalse = false;

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
          title: const Text('Student Services Suite'),
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
              image: AssetImage("assets/gek_student.png"),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.40), BlendMode.dstATop),
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
                        "The Student Services Suite houses the offices for all of the College of Engineering's Counselors, though you are more likely to meet them via a zoom meeting rather than in person.",
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
                        "Is this location one of the Lost and Founds within PFT?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateTrue ? Colors.lightGreenAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateTrue = !stateTrue;
                      });
                    },
                    child: Text('True'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: stateFalse ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        stateFalse = !stateFalse;
                      });
                    },
                    child: Text('False'),
                  ),
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