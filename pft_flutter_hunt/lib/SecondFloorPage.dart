import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/kris_a.dart';
import 'package:pft_flutter_hunt/derek_v.dart';

class SecondFloorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2nd Floor'),
      ),
      body: Center(
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
            ElevatedButton(
              onPressed: () {
                // Navigate to Car Lab (KrisAPage)
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => KrisAPage()),
                // );
              },
              child: Text("Car Lab"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Study Rooms page
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => StudyPage()),
                // );
              },
              child: Text("Study Rooms"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Dean Suite page
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => DeanPage()),
                // );
              },
              child: Text("Dean Suite"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Student Services page
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => StudentPage()),
                // );
              },
              child: Text("Student Services"),
            ),
          ],
        ),
      ),
    );
  }
}