import 'package:flutter/material.dart';
import 'package:pft_flutter_hunt/cassidy_m.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Link to Cassidy M.'s section
  Future<void> cassmNav(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => const CassMPage()),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PFT Flutter Treasure Hunt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          /*mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {   
                                          //navigatiion call here
                                      }, 
                            child: Text("Kyla Abshire"),
                          ),
            ElevatedButton(onPressed: () {   
                                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => KristenPage()),
                                          );
                                      }, 
                            child: Text("Kristen Averett"),
                          ),
            ElevatedButton(onPressed: () {   
                                          //navigatiion call here
                                      }, 
                            child: Text("Gabrielle King"),
                          ),
            ElevatedButton(onPressed: () {   
                                          //navigatiion call here
                                      }, 
                            child: Text("Derek Vuong"),
                          ),
            ElevatedButton(onPressed: () {   
                                          //navigatiion call here
                                      }, 
                            child: Text("Cassidy McDonald"),
                          ),
            ElevatedButton(onPressed: () {   
                                          //navigatiion call here
                                      }, 
                            child: Text("Kendrick Manchester"),
                          ),*/

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstFloor()));
                },
                child: Text('First Floor')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondFloor()));
                },
                child: Text('Second Floor')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdFloor()));
                },
                child: Text('Third Floor')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CassMPage()),
                  );
                },
                child: const Text('Cassidy M.')),
          ],
        ),
      ),
    );
  }
}

class KristenPage extends StatefulWidget {
  const KristenPage({super.key});

  @override
  _KristenPageState createState() => _KristenPageState();
}

class _KristenPageState extends State<KristenPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController myController = TextEditingController();

   @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _checkInput() {
    if (myController.text == "2215") {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text("Correct! You've entered 2215."),
          );
        },
      );
    }
  }


class FirstFloor extends StatelessWidget {
  const FirstFloor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Floor PFT')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back!'),
        ),
      ),
    );
  }
}

class SecondFloor extends StatelessWidget {
  const SecondFloor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Floor PFT')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back!'),
        ),
      ),
    );
  }
}

class ThirdFloor extends StatelessWidget {
  const ThirdFloor({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 53, 106, 67),
        title: const Text("Kristen's Page"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: myController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter the room number!',
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/driving_sim.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _checkInput, // Call function to check input
        tooltip: 'Check Number',
        child: const Icon(Icons.check),
      ),
    );
  }
}
      appBar: AppBar(title: const Text('Third Floor PFT')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go Back!'),
        ),
      ),
    );
  }
}

