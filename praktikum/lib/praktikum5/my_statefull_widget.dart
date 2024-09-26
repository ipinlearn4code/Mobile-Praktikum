  import 'package:flutter/material.dart';

  class MyStatefullWidget extends StatefulWidget {
    const MyStatefullWidget({super.key});

    @override
    State<MyStatefullWidget> createState() => _MyStatefullWidgetState();
  }

  class _MyStatefullWidgetState extends State<MyStatefullWidget> {
    int _counter = 0;
    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Tombol dibawah dipencet sebanyak:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: const Text('Tambah'),
              ),
            ],
          ),
        ),
      );
    }
  }
