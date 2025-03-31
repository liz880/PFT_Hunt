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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Capstone Gallery'),
            bottom: const TabBar(
            labelColor: Color(0xFFD29F13),
            unselectedLabelColor: Colors.white, 
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
                image: AssetImage("assets/capstone.png"),
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

                // Question Tab
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white70,
                      width:400,
                      height: 100,
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:
                const Color(0xFF3C1053),
            title: const Text('Chevron Center',
              style: TextStyle(
                color: const Color(
                    0xFFD29F13),
              ),
            ),
            bottom: const TabBar(
            labelColor: Color(0xFFD29F13),
            unselectedLabelColor: Colors.white, 
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
                image: AssetImage("assets/chevron.png"),
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
  final TextEditingController _leftSideController = TextEditingController();
  final TextEditingController _rightSideController = TextEditingController();
  String feedbackMessage = "";
  
  // Flags to track if answers are correct
  bool isLeftCorrect = false;
  bool isRightCorrect = false;

  // Correct answers
  final String correctLeftSideAnswer = "1202";
  final String correctRightSideAnswer = "1200";

  // Method to check the answers
  void checkAnswers() {
    String leftAnswer = _leftSideController.text.trim();
    String rightAnswer = _rightSideController.text.trim();

    setState(() {
      if (leftAnswer == correctLeftSideAnswer) {
        isLeftCorrect = true;
      } else {
        isLeftCorrect = false;
      }

      if (rightAnswer == correctRightSideAnswer) {
        isRightCorrect = true;
      } else {
        isRightCorrect = false;
      }

      if (isLeftCorrect && isRightCorrect) {
        feedbackMessage = "Correct! The Donor Wall is between room 1202 (Left) and room 1200 (Right).";
      } else {
        feedbackMessage = "Oops! Try again. Please check your answers.";
      }
    });
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
              image: AssetImage('assets/gek_donor_two.png'), // Background image
              fit: BoxFit.cover,
              opacity: 0.5, // Optional opacity to make the text more readable
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // Add padding on the sides
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  
                  SizedBox(height: 20),

                  // Question Section with Two Text Fields
                  Container(
                    padding: EdgeInsets.all(16.0),
                    color: Colors.white.withOpacity(0.8), // Slight transparency for readability
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Ensure content doesn't take extra space
                      children: [
                        Text(
                          "What two rooms is the donor wall between?",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        // Left side input box
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isLeftCorrect ? Colors.green : isLeftCorrect == false && _leftSideController.text.isNotEmpty ? Colors.red : Colors.grey, // Conditional color
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextField(
                            controller: _leftSideController,
                            decoration: InputDecoration(
                              labelText: 'Left Side (Room Number)',
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        // Right side input box
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: isRightCorrect ? Colors.green : isRightCorrect == false && _rightSideController.text.isNotEmpty ? Colors.red : Colors.grey, // Conditional color
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextField(
                            controller: _rightSideController,
                            decoration: InputDecoration(
                              labelText: 'Right Side (Room Number)',
                              border: InputBorder.none, // Remove default border
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: checkAnswers,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF3C1053),
                          foregroundColor:
                              const Color(0xFFD29F13),
                        ),
                        child: const Text('Submit'),
                        
                      ),
                        SizedBox(height: 20),
                        // Feedback Message
                        if (feedbackMessage.isNotEmpty)
                          Text(
                            feedbackMessage,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: feedbackMessage.contains("Correct") ? Colors.green : Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  // Back Button
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
            ),
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
  String? resultMessage; // Message to display based on the user's answer

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
      resultMessage = isCorrect 
          ? "Correct! All your selections were correct!" 
          : "Oops! Wrong answer, please review your selections and try again.";
    });
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
              image: AssetImage("assets/room.png"),
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
                      ElevatedButton(
                        onPressed: checkAnswers,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF3C1053),
                          foregroundColor:
                              const Color(0xFFD29F13),
                        ),
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ),

              // If the user has submitted, show the information and result
              if (_isSubmitted)
                Expanded(
                  child: Container(
                    color: Colors.white70,
                    padding: EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: [
                            // Show the result message (Correct or Wrong Answer)
                            Text(
                              resultMessage ?? '',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: resultMessage != null && resultMessage!.startsWith("Correct") 
                                    ? Colors.green 
                                    : Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            // Additional Information
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
        ),
      ),
    );
  }
}