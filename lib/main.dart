import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
        primaryColor: Colors.purple,
        accentColor: Colors.purple,

        //text style
        textTheme: TextTheme(
          //Headlines
          headlineLarge: TextStyle(fontSize: 64.0, fontWeight: FontWeight.bold),
          headlineMedium:
              TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
          headlineSmall: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),

          //Titles
          titleLarge: TextStyle(fontSize: 64.0, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
          titleSmall: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),

          //Body
          bodyLarge: TextStyle(fontSize: 64.0, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 24.0, fontStyle: FontStyle.italic),
          bodySmall: TextStyle(fontSize: 12.0, fontStyle: FontStyle.italic),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Test:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
