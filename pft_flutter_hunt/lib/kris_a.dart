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
  backgroundColor: const Color(0xFF3C1053), 
  title: const Text("VR Driving Research Lab",
  style: TextStyle(color: Colors.white), 
  ),
  iconTheme: const IconThemeData(color: Colors.white), 
),
    body: Stack(
      fit: StackFit.expand, 
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/driving_sim.jpeg'), 
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), 
                BlendMode.dstATop,
              ),
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: <Widget>[
              SizedBox(
                width: 300, 
                child: TextFormField(
                  controller: myController,
                  textAlign: TextAlign.center, 
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter the room number!',
                    filled: true,
                    fillColor: Colors.white70, 
                  ),
                ),
              ),
              const SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white70, 
                  foregroundColor: Colors.black, 
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Back to Home"),
              ),
            ],
          ),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _checkInput, 
      tooltip: 'Check Number',
      child: const Icon(Icons.check),
    ),
  );
}
}