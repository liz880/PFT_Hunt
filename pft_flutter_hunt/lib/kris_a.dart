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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PFT Flutter Scavenger Hunt'),
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