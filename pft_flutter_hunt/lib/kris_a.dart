import 'package:flutter/material.dart';

class KristenPage extends StatefulWidget {
  const KristenPage({super.key});

  @override
  State<KristenPage> createState() => _KristenPageState();
}

class _KristenPageState extends State<KristenPage> {
  final TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _checkInput() {
    if (myController.text == "2215") {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text("Correct! You've entered 2215."),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 106, 67),
        title: const Text("Kristen's Page"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: myController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter the room number!',
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/driving_sim.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _checkInput, // Call function to check input
        tooltip: 'Check Number',
        child: const Icon(Icons.check),
      ),
    );
  }
}