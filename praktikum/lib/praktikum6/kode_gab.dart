import 'dart:developer';

import 'package:flutter/material.dart';

class KodeGab extends StatefulWidget {
  const KodeGab({super.key});

  @override
  State<KodeGab> createState() => _KodeGabState();
}

class _KodeGabState extends State<KodeGab> {
  String _name = '';
  int _age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Nama'),
              onChanged: (text) {
                _name = text;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Umur'),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                _age = int.tryParse(text) ?? 0;
              },
            ),
            ElevatedButton(
              onPressed: () {
                log('Nama: $_name, Umur: $_age');
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
