import 'package:flutter/material.dart';

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
        title: const Text(
          "VR Driving Research Lab",
          style: TextStyle(
                color: const Color(
                    0xFFD29F13),)
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/driving_sim.jpeg',
              fit: BoxFit.cover, 
              colorBlendMode: BlendMode.dstATop,
              color: Colors.black.withOpacity(0.4),
            ),
          ),

          Align(
            alignment: Alignment.topCenter, 
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0), 
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "The driving simulator lab hosts the LSU Driving Simulator, a full-sized passenger car combined with a series of cameras, projectors and screens to provide a high fidelity virtual environment that offers a high degree of driving realism.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 12),

                  Container(
                    padding: const EdgeInsets.all(10.0),
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "What type of car is in the VR Driving Lab?",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),

                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 220, 
                          ),
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
                              labelText: 'Enter car type',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              filled: true,
                              fillColor: Colors.white70,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                           onPressed: _checkInput,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF3C1053),
                          foregroundColor:
                              const Color(0xFFD29F13),
                        ),
                        child: const Text('Submit'),
                      ),
                        const SizedBox(height: 10),

                        if (feedbackMessage.isNotEmpty)
                          Text(
                            feedbackMessage,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: feedbackMessage.contains("Correct") ? Colors.green : Colors.red,
                            ),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
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
        ],
      ),
    );
  }
}