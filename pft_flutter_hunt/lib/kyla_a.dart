import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';

class CapstonePage extends StatefulWidget {
  const CapstonePage({super.key});
 
  @override
  State<CapstonePage> createState() => CapstoneState();

}
class CapstoneState extends State<CapstonePage> {

  final TextEditingController _controller = TextEditingController();
  int _attempts = 0;
  final String _correctAnswer = "14";
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
                image: AssetImage("capstone.png"),
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
                      onPressed: checkAnswer,
                      child: const Text('Submit'),
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
  final String _answer = "True";

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
                image: AssetImage("chevron.png"), // You can use a relevant image for Chevron Center
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
final PageController _pageController = PageController();

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
                        Image.asset('gek_donor_two.png', fit: BoxFit.cover),
                        Image.asset('gek_donor_one.png', fit: BoxFit.cover),
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

  bool isSelected1 = false; // Statement 1
  bool isSelected2 = false; // Statement 2
  bool isSelected3 = false; // Statement 3
  bool isSelected4 = false; // Statement 4

  // Correct Answers
  List<bool> correctAnswers = [true, false, true, true];
  bool _isSubmitted = false; // Track if the user has submitted their answer

  // Method to check the answers
  void checkAnswers() {
    List<bool> userAnswers = [isSelected1, isSelected2, isSelected3, isSelected4];
    bool isCorrect = true;

    for (int i = 0; i < correctAnswers.length; i++) {
      if (userAnswers[i] != correctAnswers[i]) {
        isCorrect = false;
        break;
      }
    }

    setState(() {
      _isSubmitted = true;
    });

    // Show a pop-up with the result
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isCorrect ? "Correct!" : "Oops! Try again!"),
          content: Text(isCorrect
              ? "All your selections were correct!"
              : "Please review your selections and try again."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RoyOMartin Auditorium'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Navigate back to the home page
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("room.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              // Question Section (First)
              Container(
                color: Colors.white70,
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    "Which of the following statements are true about the RoyOMartin Auditorium? "
                    "Select all that apply.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),

              // Centered Box for the Select All question
              Center(
                child: Container(
                  width: 350, // Width of the box
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      CheckboxListTile(
                        title: Text("1. It holds up to 250 students."),
                        value: isSelected1,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected1 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("2. It has a stage for performances."),
                        value: isSelected2,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected2 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("3. It is the largest classroom space in PFT."),
                        value: isSelected3,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected3 = value!;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: Text("4. It has flooded due to a safety shower at least once."),
                        value: isSelected4,
                        onChanged: (bool? value) {
                          setState(() {
                            isSelected4 = value!;
                          });
                        },
                      ),
                      // Button to check the answer
                      ElevatedButton(
                        onPressed: checkAnswers,
                        child: Text("Submit"),
                      ),
                    ],
                  ),
                ),
              ),

              // If the user has submitted, show the information
              if (_isSubmitted)
                Expanded(
                  child: Container(
                    color: Colors.white70,
                    padding: EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              "The largest classroom space in the building is the RoyOMartin Auditorium, "
                              "which holds up to 250 students. It’s either really cold in there or really hot, "
                              "depending on the day! Oh, and by the way, it has flooded at least once this year "
                              "due to a safety shower – don't ask why!",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}