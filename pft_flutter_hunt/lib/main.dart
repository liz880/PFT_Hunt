import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/cassidy_m.dart';
import 'package:pft_flutter_hunt/kris_a.dart';
import 'package:pft_flutter_hunt/derek_v.dart';
import 'package:pft_flutter_hunt/kendrick_m.dart';
import 'package:pft_flutter_hunt/gabrielle_k.dart';
import 'package:pft_flutter_hunt/kyla_a.dart';
import 'package:pft_flutter_hunt/FirstFloorPage.dart';
import 'package:pft_flutter_hunt/SecondFloorPage.dart';
import 'package:pft_flutter_hunt/ThirdFloorPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '(PF)Treasure Hunt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 78, 59, 112)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '(PF)Treasure Hunt'),
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
      body: Container(
        width: 3000,
        child: Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('pft.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PFT Scavenger Hunt',
                  style: TextStyle(
                    fontFamily: 'ProximaNova',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 43, 1, 56),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0), // Padding between buttons
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstFloorPage()),
                      );
                    },
                    child: Text('1st Floor', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0), // Padding between buttons
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondFloorPage()),
                      );
                    },
                    child: Text('2nd Floor', style: TextStyle(fontSize: 20)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0), // Padding between buttons
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdFloorPage()),
                      );
                    },
                    child: Text('3rd Floor', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}