import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xFF3C1053),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF3C1053),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KristenPage()),
                );
              },
              child: const Text("Kristen Averett"),
            ),
          ],
        ),
      ),
    );
  }
}

class KristenPage extends StatefulWidget {
  const KristenPage({super.key});

  @override
  State<KristenPage> createState() => _KristenPageState();
}

class _KristenPageState extends State<KristenPage> {
  final TextEditingController myController = TextEditingController();
  String feedbackMessage = '';

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _checkInput() {
    setState(() {
      if (myController.text.trim().toLowerCase() == "ford fusion") {
        feedbackMessage = "Correct! The car in the VR Driving Lab is a Ford Fusion.";
      } else {
        feedbackMessage = "Incorrect. Try again!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3C1053), 
        title: const Text("VR Driving Research Lab",
        style: TextStyle(color: Colors.white), 
  ),
  iconTheme: const IconThemeData(color: Colors.white), 
),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/driving_sim.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white70,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  child: const Center(
                    child: Text(
                      "The driving simulator lab hosts the LSU Driving Simulator, a full-sized passenger car combined with a series of cameras, projectors and screens to provide a high fidelity virtual environment that offers a high degree of driving realism.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.white.withOpacity(0.8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "What type of car is in the VR Driving Lab?",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 18),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: feedbackMessage.contains("Correct")
                                ? Colors.green
                                : feedbackMessage.isNotEmpty
                                    ? Colors.red
                                    : Colors.grey,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          controller: myController,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            labelText: 'Enter the type of car!',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _checkInput,
                        child: const Text("Submit"),
                      ),
                      const SizedBox(height: 20),
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
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}