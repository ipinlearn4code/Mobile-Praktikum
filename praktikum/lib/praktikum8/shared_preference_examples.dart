import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceExamples extends StatefulWidget {
  const SharedPreferenceExamples({super.key});

  @override
  State<SharedPreferenceExamples> createState() =>
      _SharedPreferenceExamplesState();
}

class _SharedPreferenceExamplesState extends State<SharedPreferenceExamples> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  // Function to load counter from shared preferences
  _loadCounter() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        counter = prefs.getInt('counter') ?? 0;
      });
    } catch (e) {
      print("Error loading counter: $e");
    }
  }

  // Function to increment counter and save it in shared preferences
  _incrementCounter() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        counter++;
        prefs.setInt('counter', counter);
      });
    } catch (e) {
      print("Error saving counter: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter with Persistence'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Button pressed $counter times:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
