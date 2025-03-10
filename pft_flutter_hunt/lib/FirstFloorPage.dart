import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/cassidy_m.dart';
import 'package:pft_flutter_hunt/kyla_a.dart';


class FirstFloorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1st Floor'),
      ),
      body: Center(
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
            ElevatedButton(
              onPressed: () {
                //Navigate to Chevron Center page
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChevronPage()),
                 );
              },
              child: Text("Chevron Center"),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigate to Donor Wall page
                Navigator.push(
                 context,
                MaterialPageRoute(builder: (context) => WallPage()),
                 );
              },
              child: Text("Donor Wall"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Roy O Martin Auditorium page
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AuditoriumPage()),
                // );
              },
              child: Text("Roy O Martin Auditorium"),
            ),
          ],
        ),
      ),
    );
  }
}