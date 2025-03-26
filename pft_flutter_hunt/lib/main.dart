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

  //SECTION - Nav bar
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePageContent(),
    FirstFloorPage(),
    SecondFloorPage(),
    ThirdFloorPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Color(0xFFF1EEDB),
        selectedItemColor: const Color(0xFFD29F13),
        unselectedItemColor: const Color(0xFF3C1053),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Text("1"),
            label: "Floor One",
          ),
          BottomNavigationBarItem(
            icon: Text("2"),
            label: "Floor Two",
          ),
          BottomNavigationBarItem(
            icon: Text("3"),
            label: "Floor Three",
          ),
        ],
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
        width: 3000,
        child: Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/pft.png'),
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
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 43, 1, 56),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      );
  }
}