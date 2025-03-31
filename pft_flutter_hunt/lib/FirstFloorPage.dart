import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/cassidy_m.dart';
import 'package:pft_flutter_hunt/kyla_a.dart';


class FirstFloorPage extends StatelessWidget {
  const FirstFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3C1053),
        title: Text('1st Floor', style: TextStyle(
                color: const Color(
                    0xFFD29F13),)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elevator.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to Capstone Gallery page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CapstonePage()),
                  );
                },
                child: Text("Capstone Gallery"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Commons (CassMPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CassMPage()),
                  );
                },
                child: Text("Commons"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Chevron Center page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChevronPage()),
                  );
                },
                child: Text("Chevron Center"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Donor Wall page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WallPage()),
                  );
                },
                child: Text("Donor Wall"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Roy O Martin Auditorium page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AuditoriumPage()),
                  );
                },
                child: Text("Roy O Martin Auditorium"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}