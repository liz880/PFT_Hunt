import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/kris_a.dart';
import 'package:pft_flutter_hunt/derek_v.dart';
import 'package:pft_flutter_hunt/gabrielle_k.dart';


class SecondFloorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Floor'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('elevator.png'), // Ensure to add the elevator image to the assets folder
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
                  // Navigate to Trophies (DerekVPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DerekVPage()),
                  );
                },
                child: Text("Trophies"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Car Lab (KrisAPage)
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KristenPage()),
                  );
                },
                child: Text("Car Lab"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Study Rooms page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudyRoomsPage()),
                  );
                },
                child: Text("Study Rooms"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Dean Suite page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeanSuitePage()),
                  );
                },
                child: Text("Dean Suite"),
              ),
              SizedBox(height: 20), // Padding between buttons
              ElevatedButton(
                onPressed: () {
                  // Navigate to Student Services page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentServicesPage()),
                  );
                },
                child: Text("Student Services"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}