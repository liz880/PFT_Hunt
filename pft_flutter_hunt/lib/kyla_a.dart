import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class CapstonePage extends StatefulWidget {
  const CapstonePage({super.key});
 
  @override
  State<CapstonePage> createState() => CapstoneState();

}
class CapstoneState extends State<CapstonePage> {

  TextEditingController _controller = TextEditingController();
  int _attempts = 0;
  String _correctAnswer = "14";
  String _userAnswer = "";
  String _hint = "You have THREE attempts!";

  // Function to handle the input check
  void checkAnswer() {
    setState(() {
      _userAnswer = _controller.text;
      _attempts++;

      // Check if the answer is correct
      if (_userAnswer == _correctAnswer) {
        _hint = "Correct! The answer is 14.";
      } else if (_attempts >= 3) {
        _hint = "Oops! The correct answer is 14.";
      } else {
        _hint = "Incorrect, try again!";
      }
    });
  }

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
        length: 3, // Updated tab count to 4 for the new Capstone Stairs tab
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Capstone Gallery'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.question_answer)),
                Tab(icon: Icon(Icons.star)), // Added tab for Capstone Stairs
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
                // Info Tab
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      width: 450,
                      height: 330,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "Patrick F. Taylor Hall is the largest academic building in Louisiana, with over 400,000 square feet of space. "
                          "It houses the LSU College of Engineering's eight academic departments and offers state-of-the-art classrooms, labs, and gathering spaces.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
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

                // Question Tab
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
                          "Fill in the blank: "
                          "How many outlets are on the Capstone Stairs?",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        color: Colors.white70,
                        width: 500,
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: 'Enter your answer here...',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: checkAnswer,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        _hint, // Display the hint or correct answer message
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),

                // Capstone Stairs Tab
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      width: 450,
                      height: 330,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "The Capstone Stairs provide a relaxing area to study or just unwind. You can view the stairs from all three floors of PFT, and on sunny days, the upper levels' windows allow plenty of sunlight to shine in. "
                          "Whether you're meeting new people or chatting with friends, this space offers a perfect balance of comfort and community.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
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
class ChevronPage extends StatefulWidget {
  const ChevronPage({super.key});
 
  @override
  State<ChevronPage> createState() => ChevronState();

}
class ChevronState extends State<ChevronPage> {
  bool isPressedTrue = false;
  bool isPressedFalse = false;
  int _attempts = 0;
  String _hint = "";
  String _answer = "True";

  // Function to handle the answer check
  void checkAnswer(bool userAnswer) {
    setState(() {
      if ((userAnswer && _answer == "True") || (!userAnswer && _answer == "False")) {
        _hint = "Correct! Yes, the Chevron Center has a conference room that students can rent out.";
      } else {
        _attempts++;
        if (_attempts >= 3) {
          _hint = "Oops! The correct answer is: True.";
        } else {
          _hint = "Incorrect. Try again!";
        }
      }
    });
  }

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
        length: 4, // Updated tab count to 4 for the Chevron Center tab
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Chevron Center'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.question_answer)),
                Tab(icon: Icon(Icons.star)),
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/chevron_center.jpg"), // You can use a relevant image for Chevron Center
                fit: BoxFit.cover,

              ),
            ),
            child: TabBarView(
              children: [
                // Info Tab
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      width: 450,
                      height: 330,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "The Chevron Center for Engineering Education is home to the Engineering Communication Studio and the Society of Peer Mentors. "
                          "This center provides various resources, including 3D printers, large format printers, and electronic devices that students can rent to complete class projects. ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
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

                // Question Tab (True or False)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      width: 450,
                      height: 200,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          "True or False: The Chevron Center has a conference room that students can rent out.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        "You have $_attempts attempts remaining.",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: isPressedTrue ? Colors.greenAccent : Colors.white70),
                        onPressed: () {
                          setState(() {
                            isPressedTrue = !isPressedTrue;
                            isPressedFalse = false;
                          });
                          checkAnswer(true);
                        },
                        child: Text('True'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: isPressedFalse ? Colors.redAccent : Colors.white70),
                        onPressed: () {
                          setState(() {
                            isPressedFalse = !isPressedFalse;
                            isPressedTrue = false;
                          });
                          checkAnswer(false);
                        },
                        child: Text('False'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        _hint, // Display the hint or correct answer message
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),


                // Star Tab with the link only
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 6.0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      width: 450,
                      child: Text(
                        "Find out more about the Chevron Center: \n"
                        "Website: https://www.lsu.edu/eng/chevron/index.php",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                      ),
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
class WallPage extends StatefulWidget {
  const WallPage({super.key});
 
  @override
  State<WallPage> createState() => WallState();

}
class WallState extends State<WallPage> {
PageController _pageController = PageController();

  // Function to go to the next page
  void _nextPage() {
    if (_pageController.page != 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  // Function to go to the previous page
  void _previousPage() {
    if (_pageController.page != 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Donor Wall'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pft_commons.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              // Info Section
              Container(
                color: Colors.white70,
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    "The Donor Wall honors the generous contributions "
                    "of our alumni and supporters who have helped shape "
                    "the future of LSU College of Engineering. The wall "
                    "displays the names of donors who have provided support "
                    "to the college’s growth and development.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              
              // Image Carousel Section with PageView and Arrows
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // PageView to navigate between images
                    PageView(
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Image.asset('assets/donor_wall_image_1.jpg', fit: BoxFit.cover),
                        Image.asset('assets/donor_wall_image_2.jpg', fit: BoxFit.cover),
                      ],
                    ),
                    
                    // Left Arrow
                    Positioned(
                      left: 10,
                      child: IconButton(
                        icon: Icon(Icons.arrow_left, size: 50, color: Colors.white),
                        onPressed: _previousPage,
                      ),
                    ),
                    
                    // Right Arrow
                    Positioned(
                      right: 10,
                      child: IconButton(
                        icon: Icon(Icons.arrow_right, size: 50, color: Colors.white),
                        onPressed: _nextPage,
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

class AuditoriumPage extends StatefulWidget {
  const AuditoriumPage({super.key});
 
  @override
  State<AuditoriumPage> createState() => AuditoriumState();

}
class AuditoriumState extends State<AuditoriumPage> {

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