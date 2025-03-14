import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/kendrick_m.dart';

class ThirdFloorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3rd Floor'),
      ),
       body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('elevator.png'), // Make sure to use the elevator image from assets
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