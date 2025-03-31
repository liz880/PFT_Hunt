import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class StudyRoomsPage extends StatefulWidget {
  const StudyRoomsPage({super.key});

  @override
  State<StudyRoomsPage> createState() => StudyState();
}

class StudyState extends State<StudyRoomsPage> {
  bool stateA = false;
  bool stateB = false;
  bool stateC = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF3C1053),
          title: const Text(
            'Study Rooms',
            style: TextStyle(
              color: Color(0xFFD29F13),
            ),
          ),
          bottom: const TabBar(
            labelColor: Color(0xFFD29F13),
            unselectedLabelColor: Colors.white, 
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
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.40),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: TabBarView(
            children: [
              // Info Tab content
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3C1053),
                      foregroundColor: const Color(0xFFD29F13),
                    ),
                    child: const Text('Back'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              // Question Tab content
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
                      backgroundColor: stateA ? Colors.redAccent : Colors.white70,
                    ),
                    onPressed: () {
                      setState(() {
                        stateA = !stateA;
                      });
                    },
                    child: Text('a) Tears Week'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: stateB ? Colors.redAccent : Colors.white70,
                    ),
                    onPressed: () {
                      setState(() {
                        stateB = !stateB;
                      });
                    },
                    child: Text('b) Hell Week'),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: stateC ? Colors.lightGreenAccent : Colors.white70,
                    ),
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
    );
  }
}

class DeanSuitePage extends StatefulWidget {
  const DeanSuitePage({super.key});

  @override
  State<DeanSuitePage> createState() => DeanState();
}

class DeanState extends State<DeanSuitePage> {
  bool stateTrue = false;
  bool stateFalse = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:
                const Color(0xFF3C1053),
            title: const Text("Dean's Suite", style: TextStyle(
                color: const Color(
                    0xFFD29F13),),),
            bottom: const TabBar(
            labelColor: Color(0xFFD29F13),
            unselectedLabelColor: Colors.white, 
              tabs: [
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.question_answer)),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/gek_dean.png"),
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.40), BlendMode.dstATop),
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
                          "The Student Services Suite contains the offices for all of the College of Engineering's counselors. However, due to the convenience of virtual communication, students are more likely to meet with counselors via Zoom rather than in person.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
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
                          backgroundColor: stateTrue
                              ? Colors.lightGreenAccent
                              : Colors.white70),
                      onPressed: () {
                        setState(() {
                          stateTrue = !stateTrue;
                        });
                      },
                      child: Text('True'),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor:
                              stateFalse ? Colors.redAccent : Colors.white70),
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
  bool stateTrue = false;
  bool stateFalse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3C1053),
        title: const Text(
          'Student Services Suite',
          style: TextStyle(
            color: Color(0xFFD29F13),
          ),
        ),
        bottom: const TabBar(
            labelColor: Color(0xFFD29F13),
            unselectedLabelColor: Colors.white, 
          tabs: [
            Tab(icon: Icon(Icons.info)),
            Tab(icon: Icon(Icons.question_answer)),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/gek_student.png"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.40),
              BlendMode.dstATop,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: TabBarView(
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
                      "The Student Services Suite houses the offices for all of the College of Engineering's Counselors, though you are more likely to meet them via a zoom meeting rather than in person.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3C1053),
                    foregroundColor: const Color(0xFFD29F13),
                  ),
                  child: const Text('Back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            // Question Tab content
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
                    backgroundColor: stateTrue ? Colors.lightGreenAccent : Colors.white70,
                  ),
                  onPressed: () {
                    setState(() {
                      stateTrue = !stateTrue;
                    });
                  },
                  child: Text('True'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: stateFalse ? Colors.redAccent : Colors.white70,
                  ),
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
    );
  }
}