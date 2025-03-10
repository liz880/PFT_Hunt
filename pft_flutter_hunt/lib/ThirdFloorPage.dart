import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/kendrick_m.dart';

class ThirdFloorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3rd Floor'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to Professors Offices (KendrickMPage)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KendrickMPage()),
            );
          },
          child: Text("Professors Offices"),
        ),
      ),
    );
  }
}