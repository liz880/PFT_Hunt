import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/cassidy_m.dart';
import 'package:pft_flutter_hunt/kris_a.dart';
import 'package:pft_flutter_hunt/derek_v.dart';
import 'package:pft_flutter_hunt/kendrick_m.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Link to Cassidy M.'s section
  Future<void> cassmNav(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => const CassMPage()),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PFT Flutter Treasure Hunt'),
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
            const Text('choose your Guide'),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const FirstFloor()));
              },
              child: Text('First Floor'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const SecondFloor()));
              },
              child: Text('Second Floor'),
            ),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                    context,
                     MaterialPageRoute(
                         builder: (context) => const KendrickMPage()));
                
              },
              child: Text('Kendrick M.'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CassMPage()),
                );
              },
              child: const Text('Cassidy M.'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DerekVPage()),
                  );
                },
                child: const Text('Derek V.')),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KristenPage()),
                  );
                },
                child: const Text('Kristen Averett')),
          ],
        ),
      ),
    );
  }
}