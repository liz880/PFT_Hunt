import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/kendrick_m.dart';

class ThirdFloorPage extends StatelessWidget {
  const ThirdFloorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF3C1053),
        title: Text('3rd Floor', style: TextStyle(
                color: const Color(
                    0xFFD29F13),)),
      ),
       body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/elevator.png'), // Make sure to use the elevator image from assets
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop), // Black opacity
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to Professors Offices (KendrickMPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KendrickMPage()),
                  );
                },
                child: Text("Professors Offices"),
              ),
              SizedBox(height: 20), // Padding between buttons
            ],
          ),
        ),
      ),
    );
  }
}