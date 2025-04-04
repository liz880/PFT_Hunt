import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/main.dart';


class CassMPage extends StatefulWidget {
  const CassMPage({super.key});
 
  @override
  State<CassMPage> createState() => _CassMPageState();
}

class _CassMPageState extends State<CassMPage> {

  bool isPressedCFA = false;
  bool isPressedPB = false;
  bool isPressedCC = false;

  @override  
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
      length: 3,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor:
                const Color(0xFF3C1053),
          title: const Text('PFT Commons', style: TextStyle(
                color: const Color(
                    0xFFD29F13),),),
          bottom: const TabBar(
            labelColor: Color(0xFFD29F13),
            unselectedLabelColor: Colors.white, 
            tabs: [
              Tab(icon: Icon(Icons.info)),
              Tab(icon: Icon(Icons.question_answer)),
              Tab(icon: Icon(Icons.image)),
            ],
          ),
        ),

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pft_commons.jpg"),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.40), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),

          child: TabBarView(

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Container(
                    color: Colors.white70,
                    width: 450,
                    height: 330,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "This atrium space is aptly named “The Commons” and serves as the main gathering space for everyone in Patrick F. Taylor Hall. Students frequent this space between classes, not only because of the Panera Bread, but also because of the nearby Dow Student Leadership Incubator, which serves as a meeting and storage space for the more than 40 student organizations that are part of our college.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color(0xFF3C1053),
                          foregroundColor:
                              const Color(0xFFD29F13),
                        ),
                        child: const Text('Back'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Container(
                    color: Colors.white70,
                    width: 450,
                    height: 150,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        "Where can you use a Sip Club Membership to get a refreshing drink?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedCFA ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedCFA = !isPressedCFA;
                      });
                    },
                    child: Text('a) Chick-Fil-A'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedPB ? Colors.lightGreenAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedPB = !isPressedPB;
                      });
                    },
                    child: Text('b) Panera Bread'),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: isPressedCC ? Colors.redAccent : Colors.white70),
                    onPressed: () {
                      setState(() {
                        isPressedCC = !isPressedCC;
                      });
                    },
                    child: Text("c) CC's Coffee"),
                  ),
                  
                ],
              ),

              // Children for "Image" tab
                  Column(
                    children: [
                      Text(""),
                    ],
                  ),

            ],
          ),
        ),
      ),
      ),
    );
  }
}
